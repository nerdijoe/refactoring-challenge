# introduce_parameter_object.rb
#http://refactoring.com/catalog/introduceParameterObject.html

class GamePackageCalculator

	BASIC_PACKAGE_FACTOR = 1.0
	PREMIUM_PACKAGE_FACTOR = 2.1
	BASIC_RATE = 1
	PREMIUM_RATES = 2
	GOLD_LIFE_RATIO = 0.2
	POWERUPS_LIFE_RATIO = 0.5


	#calculates the cost of a gamer who wants to get X gold, Y powerup and number of lives derived from X gold and Y powerup.
	def calculate_cost(gold, powerups, premium = nil)

		lives = calculate_lives(gold, powerups)

		if premium
			premium_cost(lives, gold, powerups)
		else
			basic_cost(lives, gold, powerups)
		end
	end

	private

	def calculate_lives(gold, powerups)
		(gold * GOLD_LIFE_RATIO ).round(0) + (powerups * POWERUPS_LIFE_RATIO).round(0)
	end


	def premium_cost(lives, gold, powerups)
		PREMIUM_PACKAGE_FACTOR * lives + PREMIUM_RATES * (gold + powerups)
	end

	def basic_cost(lives, gold, powerups)
		BASIC_PACKAGE_FACTOR * lives + BASIC_RATES * (gold + powerups)
	end



end
