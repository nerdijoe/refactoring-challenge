#extract_method.rb
#use this as tips for the first one : http://refactoring.com/catalog/extractMethod.html

def print_msg(username)
	if ( username.length > 3 && username.length <= 10 )
		if ( username.downcase.start_with?("a", "e", "i", "o", "u") )
			puts "Congratulations #{username}! You won 10 dollars!"

		elsif ( username.downcase.start_with?("b", "g", "l", "p") )
			puts "Congratulations #{username}! You won 50 dollars!"

		elsif ( username.downcase.start_with?("q", "u", "x", "y", "z") )
			puts "Congratulations #{username}! You won 100 dollars!"

		else
			puts "Thanks for joining!"
		end
	end
end

username = "Alice"

print_msg(username)

username = "Bobby"

print_msg(username)


username = "Xena"

print_msg(username)
