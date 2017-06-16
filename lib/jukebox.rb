require "pry"

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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  song_list = songs.each_with_index {|element, index| puts "#{index +1}. #{element}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if input.to_i > 0
    puts input.to_i <= songs.length ? "Playing #{songs[(input.to_i)-1]}" : "Invalid input, please try again."
  elsif input.is_a?(String)
    puts songs.include?(input) ? "Playing #{input}" : "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  until input == "exit"
    puts "Please enter a command:"
    case input
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      return
    end
  end
end
