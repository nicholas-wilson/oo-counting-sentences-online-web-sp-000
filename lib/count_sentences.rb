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
    counter = 0

    words.each do |word|
      if (sentence?(word) || question?(word) || exclamation?(word))

  end
end
