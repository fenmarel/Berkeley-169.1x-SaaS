class MoviesController < ApplicationController

  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def index

    @sort = params[:sort] || session[:sort]
    @ratings = params[:ratings] || session[:ratings]    
    @all_ratings = Movie.all_ratings
    @selected_ratings = @ratings.nil? ? @all_ratings : @ratings.keys
    @movies = Movie.order(@sort).find_all_by_rating(@selected_ratings)

    if params[:sort] != session[:sort] || params[:ratings] != session[:ratings]
      session[:sort] = @sort
      session[:ratings] = @ratings
      redirect_to :sort => @sort, :ratings => @ratings and return
    end
  end

  def new
    # default: render 'new' template
  end

  def create
    @movie = Movie.create!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

end
