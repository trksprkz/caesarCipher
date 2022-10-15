# Make A Caesar Cipher:
  # Takes a message and moves each letter 4 spots to the left
  # D becomes A, etc.
  # Returns the encrypted message

def cipher(alphabet)
  alphabet= ('a'..'z').to_a
  ciphered = alphabet.rotate(4)
  to_cipher = alphabet.zip(ciphered).to_h
  ''.each_char.map { |char| to_cipher.fetch(char, char) }.join
end

puts cipher('Typical')
