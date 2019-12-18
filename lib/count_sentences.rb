require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    split_string = self.split(" ")
    count = 0 
    split_string.each do |substring|
      count += 1 if (substring.sentence? || substring.question? || substring.exclamation?)
    end 
    count 
  end
end