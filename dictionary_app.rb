require "http"
i = 0

while i = true
  puts "What word would you like the definition of? "
  search_word = gets.chomp.downcase

  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{search_word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=")

  def_data = response.parse(:json)

  word_array = def_data[0]
  word_def = word_array["text"]
  puts word_def
  
end



# Create a new ruby file called dictionary_app.rb
# The program should ask the user to enter a word, then use the wordnik API to show the word’s definition: https://developer.wordnik.com/docs#!/word/getDefinitions
# Once that works, have it also display the top example and pronunciation (browse through the documentation to the top example and pronunciation).
# Bonus: Write your program in a loop such that the user can keep entering new words without having to restart the program. Give them the option of entering q to quit.
# Bonus: Search for the audio section in the documentation. Use wordnik’s audio api to get the first fileUrl to open in the browser (you’ll need to google this!) and pronounce the name of the word.