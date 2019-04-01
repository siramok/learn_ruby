def echo(say)
    "#{say}"
end

def shout(say)
    "#{say}".upcase
end

def repeat(*args)
    if args.length == 1
        return "#{args[0]} #{args[0]}"
    end
    if args.length == 2
        return "#{args[0]} " * (args[1] - 1) + "#{args[0]}"
    end
end

def start_of_word(*args)
    if args.length == 1
        return "#{args[0]}"[0]
    end
    if args.length == 2
        return "#{args[0]}"[0.. args[1] - 1]
    end
end

def first_word(word)
    "#{word.partition(" ").first}"
end

def titleize(word)
    new = ''
    lw = ['and', 'the', 'over']
    word.split.each_with_index do |w, i|
        if i == 0
            new += "#{w.capitalize} "
        elsif lw.include?(w)
            new += "#{w} "
        else
            new += "#{w.capitalize} "
        end
    end
    return new.chomp(' ')
end