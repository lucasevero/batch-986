def encrypt(text)
  letters = text.chars
  alphabet = ("A".."Z").to_a
  new_letters = []

  letters.each_with_index do |letter, index|
    index_in_alphabet = alphabet.index(letter)
    unless index_in_alphabet.nil?
      new_letters << alphabet[index_in_alphabet - 3]
    else
      new_letters << letter
    end
  end
  new_letters.join
end

encrypt("HEY EVERYONE, MY NAME IS LUCA !")

# PSEUDOCODE
# 1. Turn the text into separate letters
# 2. Create an array with all the letters
# 3. For each letter, change it to three positions before in the alphabet array
# 4. Join all the letter into a string again
# 5. Return the done string
