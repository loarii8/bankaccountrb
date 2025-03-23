class BankAccount
  attr_reader :name

  def initialize(name, initial_balance = 0)
    @name = name
    @balance = initial_balance
  end

  # Method to deposit money into the account
  def deposit(amount)
    if amount > 0
      @balance += amount
      puts "Deposited $#{amount}. New balance: $#{@balance}"
    else
      puts "Deposit amount must be positive."
    end
  end

  # Method to withdraw money from the account
  def withdraw(amount)
    if amount > 0 && amount <= @balance
      @balance -= amount
      puts "Withdrew $#{amount}. New balance: $#{@balance}"
    elsif amount > @balance
      puts "Insufficient funds. Cannot withdraw $#{amount}."
    else
      puts "Withdrawal amount must be positive."
    end
  end

  # Method to check the account balance
  def check_balance
    puts "Current balance: $#{@balance}"
  end
end

# Example usage
account = BankAccount.new("Alice", 100)

# Check initial balance
account.check_balance

# Deposit money
account.deposit(50)

# Withdraw money
account.withdraw(30)

# Attempt to withdraw more money than the balance
account.withdraw(200)

# Check final balance
account.check_balance
