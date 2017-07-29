class Account # put ruby bank_account.rb in the console to show the program
  attr_reader :name, :balance
  
  private
  def initialize(name,pin, balance=100)
    @name = name
    @balance = balance
    @pin = pin
  end
  
  
#   private
#   def pin
#     @pin = 1234
#   end
  
  private
  def pin_error
    "Access denied: incorrect PIN."
  end
  
  public
def display_balance(pin_number)
     puts pin_number == @pin ? "#{@name}'s balance: $#{@balance}." : pin_error
  end
  
  def withdraw(pin_number, amount)
    if pin_number == @pin
      @balance -= amount
      puts "Withdrew #{amount}. #{@name}'s  new balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  def add_money(pin_number, addition)
    if pin_number == @pin
      @balance += addition
      puts "$#{addition} has been added. #{@name}'s  new balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
end

Honeys_account = Account.new("Aavani",1234, 1_000_000)
Aadis_account = Account.new("Aadi",1242, 4_000_000)

Honeys_account.display_balance(1234)
Honeys_account.withdraw(1234, 600_000)
Honeys_account.add_money(1234, 500_000)
Honeys_account.display_balance(1234)
puts "---------------------"
Aadis_account.display_balance(1242)

# put ruby bank_account.rb in the console to show the program