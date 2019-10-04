def game_setup
    stairway=[]
    count=0
    11.times do
        stairway.push(count)
        count=count+1
    end
    return stairway
end

def roll_dice 
    n= 1+rand(6)
    puts n
    return n
end 
 
def climb_stairs(position,stairway)
    new_position=position+1
    position=stairway[new_position]
    if position != 10
        puts "You climbed one step! Current position: #{position}th step."  
    end
    return position
end 


def down_stairs(position, stairway)
    new_position=position-1
    position=stairway[new_position]
    puts "You went one step down! Current position: #{position}th step."  
    return position
end

def play_game
    stairway=game_setup
    position=0
    number_of_turns=0
    while position != 10
        n=roll_dice
        if n==5 || n==6
            position=climb_stairs(position,stairway)
        end
        if n==1 && position!=0
            position=down_stairs(position,stairway)
        end
        if n==1 && position==0
            puts "Nothing happened. Current position: #{position}"
        end
        if n==2 || n==3 || n==4
            puts "Nothing happened. Current position: #{position}"
        end
        number_of_turns = number_of_turns+1
    end
    puts "Congratulations! You reached the 10th step !"
    return number_of_turns
end

def average_finish_time(n)
    values=[]
    n.times do 
        number_of_turns=play_game
        values.push(number_of_turns)
    end
    size=values.size
    sum=values.sum
    average_finish_time=sum/size
    puts average_finish_time
end 


average_finish_time(100)

