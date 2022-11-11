# Make A Caesar Cipher:
  # Takes a message and moves each letter 4 spots to the left
  # D becomes A, etc.
  # Returns the encrypted message
  class Cipher
    def translate(message, shift, result = '')
      message.each_char do |char|
        base = char.ord < 91 ? 65 : 97
        # Modifies Lowercase & Uppercase
        if char.ord.between?(65, 90) || char.ord.between?(97, 122)
          rotation = (((char.ord - base) + shift) % 26) + base
          result += rotation.chr
        # Keeps spaces & punctuation
        else
          result += char
        end
      end
      result
    end
  end
