#Blackjack!

##Objective
#Practice conditional logic including nested conditionals. 
#Use methods to keep our code DRY.

##Instructions
#We are going to build a command line blackjack game.  A player gets dealt two cards which have values between 1-11.  
# After they get dealt two cards you should show them the total score of their cards and ask them if they want to hit or stay. 
# A player is allowed to "hit" up to two times.  After each hit you should ask if they want to hit or stay and display the total value of their cards. 
# If they don't want to hit, and they are not at 21 they lose.  Your program should tell them they lose and exit.
puts "I'm feeling dangerous. Let's play Blackjack."
puts "You in? (y/n)"
text = gets.chomp

def yes_or_no
	if text == "y"
		puts "Game on."
		puts "You will get two cards initially and you can hit up to two times."
		puts "If your score surpasses 21, then you lose.. and I win."
	elsif text == "n"
		puts "Not feeling dangerous? Ok, come back when you are."	
	else
		puts "Er, I don't understand. Sorry, maybe next time."
	end
end

def hits
	card1 = rand(1..11)
	card2 = rand(1..11)
	score1 = card1 + card2
	puts "Here are your first two cards: #{card1} and #{card2}. Your total score is #{card1 + card2}."
	puts "Would you like to hit or stay?"
	text = gets.chomp
	if text == "hit"
		card3 = rand(1..11)
		score2 = score1 + card3
		if score2.to_i > 21
			puts "Ruh roh, you're over 21. I win!"
			break
		end
		puts "Okay, your third card is #{card3}, and your new total is #{card1 + card2 + card3}."
		puts "Would you like to hit or stay?"
		text2 = gets.chomp
		if text2 == "hit"
			card4 = rand(1..11)
			score3 = score2 + card4
			if score3.to_i > 21
				puts "Ruh roh, you're over 21. I win!"
				break
			end
			puts "Okay, your fourth and last card is #{card3}, and your new total is #{card1 + card2 + card3 + card4}."
			puts score3
		elsif text == "stay"
			puts "Okay."
		end
	elsif text == "stay"
		puts "Okay."
	end	
end

hits

			
#Note:  To take input from the person "playing" the game your program will have to use the Ruby method "gets".

##Challenge
#After successfully completing the previous game (there should be a commit with a working version of this game),
#alter the game so that a player can "hit" as many times as they want.