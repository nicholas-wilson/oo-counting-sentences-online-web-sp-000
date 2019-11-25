require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    words = self.split(" ")
    sentences = []
    sentence = ""

    words.each do |word|
      if (sentence? || question? || exclamation?)
        sentence << word
        puts sentence
        puts sentences
        sentences << sentence
        sentence = ""
      else
        sentence << word
      end
    end
    sentences.length
  end

end
