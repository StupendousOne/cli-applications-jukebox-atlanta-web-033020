# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play
  puts "Please enter a song name or number:"
  choice = gets.strip
  
  if songs.includes?(choice)
    puts "Playing #{choice}"
  elseif choice.to_i <= songs.length
    puts "Playing #{songs[choice.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list
  i = 1
  songs.each do |song| 
    puts "#{i}. #{song}"
    i += 1
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  continue_playing = true
  
  while continue_playing do
    input = gets.strip
    case input
      when "help"
        help
      when "play"
        play
      when "list"
        list
      when "exit"
        exit_jukebox
        continue_playing = false
      else
        puts "Invalid choice please try again or type help for options"
    end
  end
end



