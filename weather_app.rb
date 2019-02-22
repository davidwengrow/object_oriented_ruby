require "http"
2.times do
  print "Enter a word: "
  word = gets.chomp

  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/examples?includeDuplicates=false&useCanonical=false&limit=5&api_key=8dba4744d147470de953d228e1788d494480af9c8a004769a")

  example_data = response.parse


  index = 0


  2.times do
    pp example_data["examples"][index]["text"]
    puts "Great word choice, I would have picked #{word}"
    index = index + 1
  end
end