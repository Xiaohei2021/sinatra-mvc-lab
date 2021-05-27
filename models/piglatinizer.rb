class PigLatinizer
    
    def piglatinize(str)
        # binding.pry
        str.split(" ").map do |word|
            vowel = "aeiouAEIOU"
            if vowel.include?(word[0])
                word << "way"
                # binding.pry
            else
                # binding.pry
                 # new_vowel = word.split("").detect do |letter| 
                #     # binding.pry
                #     vowel.include?(letter)  
                new_vowel = word.split("").detect {|letter| vowel.include?(letter)}
                vowel_index = word.index(new_vowel)
                # binding.pry
                const = word.slice(0...vowel_index)
                leftovers = word.slice(vowel_index..)
                leftovers + const + "ay"
                # binding.pry
            end
        end.join(" ")
    end
end

# x = PigLatinizer.new
# x.piglatinize("eye")