class Book
    def title=(new_title)
        temp = ''
        conj = ['a','an','and','in','or','of','the']
        new_title.split.each_with_index do |w, i|
            if i == 0
                temp += "#{w.capitalize} "
            elsif conj.include?(w)
                temp += "#{w} "
            else
                temp += "#{w.capitalize} "
            end
        end
        @title = temp.chomp(' ')
    end
    def title
        @title
    end
end
