class EmailParser
  attr_accessor :emails

  def initialize (emails)
    @emails=emails
  end

  def parse
    emails.split.collect do |email|
      email.split(",")
    end
    .flatten.uniq
    # binding.pry
    # puttign pry above flatten fails all tests. this works?
  end

end
