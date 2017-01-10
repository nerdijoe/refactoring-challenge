# extract_variable.rb
#https://refactoring.com/catalog/extractVariable.html



username = "Alice"

is_valid_length = username.length > 3 && username.length <= 7
is_first_letter_valid = username.downcase.start_with?("a", "e", "i", "o", "u")

#unrefactored
if ( username.length > 3 && username.length <= 7 ) || ( username.downcase.start_with?("a", "e", "i", "o", "u") )
	puts "Congratulations #{username}! You won 1 million dollars!"
else
	puts "Please try again!"
end

#refactored version
if is_valid_length || is_first_letter_valid
	puts "Congratulations #{username}! You won 1 million dollars!"
else
	puts "Please try again!"
end
