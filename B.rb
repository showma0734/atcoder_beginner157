def valid?(a_arr, b_arr, c_arr, n, d_arr)
  return false unless a_arr.is_a?(Array)
  return false unless b_arr.is_a?(Array)
  return false unless c_arr.is_a?(Array)
  return false unless n.is_a?(Integer)
  return false unless d_arr.is_a?(Array)
  return false unless a_arr.all?{|obj| is_a?(Integer)}
  return false unless b_arr.all?{|obj| is_a?(Integer)}
  return false unless c_arr.all?{|obj| is_a?(Integer)}
  return false unless d_arr.all?{|obj| is_a?(Integer)}
  return false if a_arr.size != 3
  return false if b_arr.size != 3
  return false if c_arr.size != 3
  return false if d_arr.size != n
  return false if n < 1 || n > 10
  return false unless a_arr.all?{|num| num < 1 || num > 100}
  return false unless b_arr.all?{|num| num < 1 || num > 100}
  return false unless c_arr.all?{|num| num < 1 || num > 100}
  return false unless d_arr.all?{|num| num < 1 || num > 100}
  true
end

def bingo(a_arr, b_arr, c_arr, n, d_arr)
  #return nil unless valid?(a_arr, b_arr, c_arr, n, d_arr)
  arr = [a_arr, b_arr, c_arr].flatten
  boolean = []
  d_arr.each do |d|
    idx = arr.find_index(d)
    boolean[idx] = true if idx
  end
  [[0,3,6],[1,4,7],[2,5,8],[0,1,2],[3,4,5],[6,7,8],[0,4,8],[2,4,6]]
  .any?{|num|num.all?{|i| boolean[i]}} ? "Yes" : "No"

end

puts bingo([84, 97, 66], [79, 89, 11],[61, 59, 7], 7, [7, 89, 7, 87, 79, 24, 84, 30]) == "Yes"
puts bingo([41, 7, 46], [26, 89, 2],[78, 92, 8], 5, [6, 45, 16, 57, 17])== "No"