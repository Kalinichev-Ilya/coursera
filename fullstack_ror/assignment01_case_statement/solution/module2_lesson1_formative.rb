some_var = "false"
another_var = "nil"

case
  when some_var == "pink elephant" # has a value, then true; "false" == true; false
    puts "Don't think about the pink elephant!"
  
  when another_var.nil? # has a string value; then false
    puts "Question mark in the method name?"
  
  when some_var == false # "false" == false; then false
    puts "Looks like this one should execute"
  
  else
    puts "I guess nothing matched... But why?"
end
