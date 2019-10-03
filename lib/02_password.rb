def signup
    puts "Please create your password:"
    print ">"
    password=gets.chomp
    return password
end 

def login(password)
    puts "Please enter your password:"
    print ">"
    input=gets.chomp
    while input!=password
        puts "Incorrect password. Please enter your password"
        print ">"
        input=gets.chomp
    end
    welcome_screen
end

def welcome_screen
    puts "Welcome to your personal space !"
    puts "You have 3 new messages"
end

def perform
    entered_password=signup
    login(entered_password)
end

perform
