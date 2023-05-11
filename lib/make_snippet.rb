def make_snippet(string)
    first_five_words = string.split.take(5).join(" ")
    if string.split.length > 5
        return "#{first_five_words} ..."
    else
    return first_five_words
    end
end