class Translation < ActiveRecord::Base
  def translate!
    self.input_text ||= ""
    self.output_text = ""

    wordcount = input_text.split(" ").count
    (wordcount / 1.2).ceil.times do
      self.output_text += Emoji.random
    end

    return self.output_text
  end
end
