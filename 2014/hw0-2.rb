def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(str)
  !(str =~ /^[aeiou]/i) && !!(str =~ /^[a-z]/i)
end

def binary_multiple_of_4?(str)
  return true if str == "0"
  return false if !!(str =~ /[2-9a-z]/i) || str.length < 3

  str[-2..-1] == '00'
end


