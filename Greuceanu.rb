# Greuceanu fights

# start in a forest

# spy

# fight

# the princess

def start
	puts "---------------------------------------------------"
	puts "The Princess is kidnapped by a giant Dragon."
	puts "In the search of her you reached in a forest."
	puts "Here you have 2 roads - left or right?"
	puts "Which one do you take?"

	print "> "
	choice = $stdin.gets.chomp

	if choice == "left"
		spy(0)
	elsif choice == "right"
		fight
	else 
		dead("You are a coward!")
	end
end 

def spy(experience)
	if experience == 0
	puts "---------------------------------------------------"
	puts "This road offers you the possibility to spy the Dragon."
	puts "After you spy you can go to battle."
	puts "Choose how many hours do you want to spy before the fight."

	print "Please enter a number: "
	choice = $stdin.gets.chomp.to_i

		if choice < 5
			dead("You die because you don't have enought experience")
		else 
			spy(1)
		end

	else
		puts "---------------------------------------------------"
		puts "Because you have experience you kill the Dragon."
		puts "You have to choose now if you save the Princess right now or you take the Dragon Gold."
		puts "Enter your choice: 'gold' or 'Princess'"

		print "> "
		choice = $stdin.gets.chomp

		if choice == "gold"
			puts "---------------------------------------------------"
			puts "Another Dragon come and kill you."
			dead("You are too greedy.")
		else 
			princess
		end  
	end

end

def fight
	puts "---------------------------------------------------"
	puts "This road brought in front off the Dragon."
	puts "You must choose if you start to fight right now or you hide to spy first."
	puts "Enter your choice: 'fight' or 'spy'"

	print "> "
	choice = $stdin.gets.chomp

	if choice == "spy"
		spy(1)
	elsif choice == "fight"
		dead("You rushed and you died.")
	end

end

def princess
	puts "---------------------------------------------------"
	puts "You finally met the Princess."
	puts "But first you must win the heart off the Princess."
	puts "Choose what you say to her first: 'I kill the Dragon' or 'My name is Greuceanu, at your service my Princess."
	puts "Enter your choice: 'Dragon' or 'Princess'"

	while true

		print "> "
		choice = $stdin.gets.chomp

		if choice == "Dragon"
			puts "---------------------------------------------------"
			puts "You are a boastful and the Princess don't like you."
			puts "Next time talk less about what you did and talk more about what you feel for her."
			exit(0)
		elsif choice == "Princess"
			puts "---------------------------------------------------"
			puts "Congratulation, the Princess like you and is willing to know your adventures."
			exit(0)
		else 
			puts "---------------------------------------------------"
			puts "Please type: 'Dragon' or 'Princess'"
			
		end

	end

end

def dead(why)
	puts "---------------------------------------------------"
	puts why, "Try to save the Princess again."
	exit(0)
end

start