require 'pry'

class String

  def sentence?(string)
    if string.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?(string)
    if string.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?(string)
    if string.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences(string)
    words = string.split(" ")
    sentences = []
    sentence = ""

    words.each do |word|
      if (sentence?(word) || question?(word) || exclamation?(word))
        sentence << word
        sentences << sentence
      else
        sentence << word
      end
    end
    sentences.length
  end

end
