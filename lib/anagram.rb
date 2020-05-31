class Anagram

    attr_accessor :anagram_word

    def initialize(anagram_word)
        @anagram_word = anagram_word
    end

    def match(anagram_array)
        result_array = []
        word_sorted = @anagram_word.split(//).sort.join
        anagram_array.each do |word|
            match_word_sorted = word.split(//).sort.join
            if word_sorted == match_word_sorted
                result_array << word
            end
        end
        return result_array
    end

end



