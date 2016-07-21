# Get input from the user:  the cheer
def call_out_cheer
  puts "Enter Cheer"
  cheer = gets.chomp
   cheer
end

# Determine the mascot's response based on the argument
# passed to the method
def mascot_sign_for(input)
  if input == "RED HOT"
    "H-O-T!"
  elsif input == "DO IT AGAIN"
     "Go, Fight, Win"
  elsif input == "2 BITS"
     "Holler!"
  elsif input == "STOMP YOUR FEET"
     "STOMP!"
  elsif input == "GAME OVER" || input == ""
    nil
  else
     "Go Team!"
  end
end

# Print the argument passed to the method
def display(response)
  if response != nil
    p response
  end
end

# This method will control the flow of the application,
# making use of the other three methods.
def coordinate_cheers
   cheer = " "
   arr  = []
  until cheer == "GAME OVER"
    cheer = call_out_cheer
    if cheer == ""
      if arr.empty?
        arr.push("x")
      else
        break
      end
    end
    response = mascot_sign_for(cheer)
    display(response)
  end
end

