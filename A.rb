def valid?(n)
  return false unless n.is_a?(Integer)
  return false if n < 1 || n > 100
  true
end

def printing(n)
  #return nil unless valid?(n)
  return n / 2 if n.even?
  n / 2 + 1 
end