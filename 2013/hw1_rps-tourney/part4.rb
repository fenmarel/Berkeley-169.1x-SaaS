# HW 1-4: BASIC OBJECT ORIENTED PROGRAMMING
# 
# Part A: Create a class Dessert with getters and setters for name and calories. Define instance methods healthy?, which returns true if a dessert has less than 200 calories, and delicious? which returns true for all desserts.
# 
# Here is the framework:
# 
# class Dessert
    # def initialize(name, calories)
        # # Your code here
    # end
# 
    # def healthy?
        # # Your code here
    # end
# 
    # def delicious?
        # # Your code here
    # end
# end
# Note: You may define additional helper methods.
# 
# Part B: Create a class JellyBean that extends Dessert, and add a getter and setter for flavor. Modify delicious? to return false if the flavor is "black licorice" (but delicious? should still return true for all other flavors and for all non-JellyBean desserts).
# 
# The JellyBean class should look like this:
# 
# class JellyBean < Dessert
    # def initialize(name, calories, flavor)
        # # Your code here
    # end
# 
    # def delicious?
        # # Your code here
    # end
# end
# Note: As before, you may define additional helper methods.


class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  attr_accessor :name, :calories
  
  def healthy?
    self.calories < 200
  end
  
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end
  
  
  attr_accessor :flavor
  
  def delicious?
    self.flavor.downcase != "black licorice"
  end
end


# a = JellyBean.new('a', 300, 'black licorice')
# puts a.healthy?
# puts a.flavor
# puts a.calories
# puts a.delicious?




