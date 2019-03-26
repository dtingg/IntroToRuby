# Ada Jump Start - Lesson 09

# Collect info about an animal and store it in variables
print "Is the animal a mammal, bird, or fish? "
kind = gets.chomp

print "How many legs does our animal have? "
leg_count = gets.chomp

print "Is our animal fuzzy, slippery, or fluffy? "
feel = gets.chomp

print "Is our animal tall, sleek, or stout? "
description = gets.chomp

# Use those variables to describe the animal in the console output
print "The animal you described is a " + kind + ". It has #{leg_count} legs. It feels " + feel + \
". Finally, the animal is " + description + "."
