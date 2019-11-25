require 'pry'

class String

  def sentence?
    if this.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if this.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if this.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    words = this.split(" ")
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
