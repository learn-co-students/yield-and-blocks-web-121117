def hello_t(arr)
  if block_given?
    counter = 0
    while counter < arr.length
      yield(arr[counter])
      counter += 1
    end
    arr # whatever is evaluated last in a method will be the return value for the whole method
  else
    puts "Hey! No block was given!"
  end
end

arr_names= ["Tim", "Tom", "Jim"]

hello_t(arr_names) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
