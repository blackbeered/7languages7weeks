# Task 1
puts 'Hello World'

# Task 2
puts "Hallo, Ruby".index('Ruby')

# Task 3
10.times { puts "Stephan" }

# Task 4
1.upto(10) do |i|
    puts "Das hier ist Satz Nr. #{i}"
end

# Task 5
# Console: ruby solution.rb

# Task 6
random = rand(10) + 1
puts "Welche Zahl wurde zwischen 1 und 10 zufällig erzeugt?"
input = gets.chomp
if input.to_i > random then
    puts "Die Zahl is zu groß."
else 
    puts "Die Zahl ist zu klein."
end

