require 'pry'

class Cashier
  attr_accessor :total

  def initialize(total)
    @total = total
  end

  def change
    cents = (@total * 100).to_i
    dollars = cents / 100
    cents = cents % 100

    @quarters = cents / 25
    cents = cents % 25

    @dimes = cents / 10
    cents = cents % 10

    @nickels = cents / 5
    cents = cents % 5

    binding.pry

    @pennies = cents

    {:dollars => dollars,
     :quarters => @quarters,
     :dimes => @dimes,
     :nickels => @nickels,
     :pennies => @pennies}
  end
  #pennies caculation is off in either direction in the 15th or 16th
  #decimal place.  I thought there were supposed to be no decimal places with %.
  # round fixed the problem, but shouldn't be necessary

  def tell_change(change)
    puts "You will need to give the customer"
    if change[:dollars] !=0
      puts "#{change[:dollars]} dollars"
    else
      puts ""
    end
    if change[:quarters] != 0
      puts "#{change[:quarters]} quarters"
    else
      puts ""
    end
    if change[:dimes] != 0
      puts "#{change[:dimes]} dimes"
    else
      puts ""
    end
    if change[:nickels] != 0
      puts "#{change[:nickels]} nickels"
    else
      puts ""
    end
    if change[:pennies] != 0
      puts "#{change[:pennies]} pennies"
    else
      puts ""
    end
  end

  def make_the_change
    change_hash = change
    tell_change(change_hash)
  end

  def make_biscuits

  end
end

puts "How much money do you have?  No need for a dollar sign, but don't forget the decimal point."
input = gets.chomp.to_f
cashier = Cashier.new(input)
cashier.make_the_change
