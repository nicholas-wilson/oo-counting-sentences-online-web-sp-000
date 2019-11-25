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
      if (word.sentence? || word.question? || word.exclamation?)
        sentence << word
        sentences << sentence
      else
        sentence << word
      end
    end
    sentences.length
  end

end
