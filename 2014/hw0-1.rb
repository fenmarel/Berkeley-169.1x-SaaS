def sum(arr)
  arr.inject(0, &:+)
end

def max_2_sum(arr)
  sum(arr.sort.last(2))
end

def sum_to_n?(arr, n)
  arr.each_with_index do |el1, i|
    arr[i+1..-1].each do |el2|
      return true if el1 + el2 == n
    end
  end

  false
end

