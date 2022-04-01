dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
sentence = "Howdy partner, sit down! How's it going?"

def substrings(sentence, dictionary)
    up = 0
    split = sentence.downcase.gsub(/[[!?,.]]/, ' ').split(' ')
    list = dictionary.reduce(Hash.new(0)) do | word, count |
        split.each do | element |
            if element.include?(count) == true
                up += 1
                up
            else
                up
            end
        end
        if up > 0
            word[count] += up
            up = 0
            word
        else
            word
        end
    end
    puts list
end


substrings(sentence, dictionary)