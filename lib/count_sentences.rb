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

  end

  def count_sentences

  end
end
