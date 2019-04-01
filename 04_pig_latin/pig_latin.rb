
def translate(word)
    c = ['squ','qu','sch','b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
    new = ''
    word.split.each do |w|
        if !c.include?(w[0])
            new += w + 'ay '
        elsif !c.include?(w[1])
            if c.include?(w[0 .. 1])
                new += "#{w[2 .. w.length - 1]}#{w[0 .. 1]}ay "
            else
                new += "#{w[1 .. w.length - 1]}#{w[0]}ay "
            end
        elsif !c.include?(w[2])
            if c.include?(w[0 .. 2])
                new += "#{w[3 .. w.length - 1]}#{w[0 .. 2]}ay "
            else
                new += "#{w[2 .. w.length - 1]}#{w[0 .. 1]}ay " 
            end
        elsif !c.include?(w[3])
            new += "#{w[3 .. w.length - 1]}#{w[0 .. 2]}ay "
        end
    end
    return new.chomp(' ')
end