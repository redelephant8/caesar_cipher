def caesar_cipher(string, shift)
  string_array = string.downcase.split('')
  cipher_array = []
  string_array.map do |letter|
    if letter.ord.between?(97, 122)
      number = letter.ord + shift
      number = number - 122 + 96 if number > 122
    elsif letter.ord.between?(65, 90)
      number = letter.ord + shift
      number = number - 90 + 64 if number > 90
    else
      number = letter
    end
    letter = number.chr if number != letter
    cipher_array.push(letter)
  end
  cipher_array.join.capitalize
end

puts 'Enter a phrase or word: '
string = gets.chomp
puts 'Enter the Caesar Cipher shift number: '
shift = gets.chomp.to_i
p caesar_cipher(string, shift)
