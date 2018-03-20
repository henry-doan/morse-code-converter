@alphabet = {
  "a" => ".-",
  "b" => "-...",
  "c" => "-.-.",
  "d" => "-..",
  "e" => ".",
  "f" => "..-.",
  "g" => "--.",
  "h" => "....",
  "i" => "..",
  "j" => ".---",
  "k" => "-.-",
  "l" => ".-..",
  "m" => "--",
  "n" => "-.",
  "o" => "---",
  "p" => ".--.",
  "q" => "--.-",
  "r" => ".-.",
  "s" => "...",
  "t" => "-",
  "u" => "..-",
  "v" => "...-",
  "w" => ".--",
  "x" => "-..-",
  "y" => "-.--",
  "z" => "--.."
 }

def menu
  p "Hello! Welcome to morse code converter!"
  p "What do you want to do?"
  p "1: Convert words to morse code"
  p "2: Convert morse code to letters"
  p "3: Exit"
  user_input = gets.strip.to_s
  case user_input
    when "1"
      word_converter
    when "2"
      morse_code_converter
    when "3"
      p "See Ya!"
      p "... " + ". " + ". " + " " + "-.-- " + ".- " + "!"
      exit
    else
      p "Invaild Choice, Choose 1, 2, or 3"
      menu
  end
end

def word_converter
  p "Tell me a word to convert to morse code"
  user_input_arr = gets.strip.chars
  user_input_arr.each { |letter| 
    p @alphabet[letter]
  }
end

def morse_code_converter
  p "Tell me morse code to convert letters"
  user_input = gets.strip
  p @alphabet.key(user_input)
end

while true
  menu
end