class PaperBoy

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

#readers
  def earnings
    @earnings
  end

#Instance Methods
  def quota
    quota = @experience * 0.5 + 50
  end

  def deliver(start_address, end_address)
    delivered = 0
    if end_address >= start_address
      delivered = (start_address..end_address).count
    else
      delivered = (end_address..start_address).count
    end

    if delivered >= quota
      this_earning = quota * 0.25 + (delivered - quota) * 0.50
      @earnings += this_earning
      @experience += delivered
    else
      this_earning = delivered * 0.25 - 2
      @earnings += this_earning
      @experience += delivered
    end

    return this_earning

  end
  #---Pseudocode goes here---
  # delivered = house end # - house start #
  # if delivered >= quota
  #   earnings = quota * 0.25 + (delivered - quota) * 0.50
  # else if delivered < quota
  #  earnings = delivered * 0.25 - 2

  #min quota >= 50
  # experience += delivered
  # quota = experience * 0.5 + 50

  def report
    "#{@name} had delivered #{@experience} papers and earned $#{earnings} so far!"
  end

end

tommy = PaperBoy.new("Tommy")
jimmy = PaperBoy.new("Jimmy")

puts "Quota: #{tommy.quota}"
puts "Earning this time: $#{tommy.deliver(101, 160)}"
puts "Total earnings: $#{tommy.earnings}"
puts tommy.report

puts "Quota: #{tommy.quota}"
puts "Earning this time: $#{tommy.deliver(1, 75)}"
puts "Total earnings: $#{tommy.earnings}"
puts tommy.report

puts "Quota: #{jimmy.quota}"
puts "Earning this time: $#{jimmy.deliver(126, 33)}"
puts "Total earnings: $#{jimmy.earnings}"
puts jimmy.report




#
