class PigLatinizer

    attr_reader :word

    def piglatinize(input_str)
        new_str = []

        input_str.split(" ").each do |word|
           new_str << piglatinze_word(word)
        end  
        new_str.join(" ")
    end

    
    def start_with_vowel?(word)
        word.start_with?(/[aeoui]/) || word.start_with?(/[AEOUI]/)
    end

    def find_vowel_index_of_constant(word)
        vowels = ["a", "e", "i", "o", "u"]
        word_arr = word.chars

          word_arr.each do |char|
            vowels.each do |vowel|
                if char == vowel
                    return word_arr.index(char)
                end
            end
        end


    end


    def piglatinze_word(word)
        new_word = []
        word_arr = word.chars
        
        const_vowel = 

        if start_with_vowel?(word)
            new_word <<  word + "way"
            new_word
        else
            vowel_index = find_vowel_index_of_constant(word)
            consonant = word_arr.slice(0..vowel_index - 1)
            word_leftover = word.slice(vowel_index..word.length)
            word_leftover + consonant.join("") + 'ay'
        end
    end
end



