class EmailParser
  attr_accessor :emails

  def initialize (emails)
    @emails=emails
  end

  def parse
    emails.split.collect do |email|
      email.split(",")
    end
    # binding.pry
    .flatten.uniq
    
    # puttign pry above flatten fails all tests. this works?
  end

end
