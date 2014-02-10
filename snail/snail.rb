def snail(array)
  # enjoy
  return [] if array.length == 0
  return array.flatten if array.length == 1
  result = []
  length = array[0].length
  
  # print from top left
  array[0].each {|i| result << i }

  # print from top right
  for i in 1..length-1 do
    result << array[i][length-1]
  end

  for i in length-2..0 do
    result << array[length-1][i]
  end

  result
end
