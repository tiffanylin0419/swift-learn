// Write your code below 🏦

struct SwiftBank {
  private let password: String
  private var balance: Double = 0.0{
    didSet{
      if balance<100{
        displayLowBalanceMessage()
      }
    }
  }
  static let depositBonusRate = 0.01

  init(password: String, initialDeposit: Double) {
    self.password = password
    makeDeposit(ofAmount: initialDeposit)
  }
  private func isValid(_ enteredPassword:String)->Bool{
    if enteredPassword==password{
      return true
    }else{
      return false
    }
  }

  private func finalDepositWithBonus(fromInitialDeposit deposit: Double)->Double{
    return deposit+deposit*SwiftBank.depositBonusRate
  }

  mutating func makeDeposit(ofAmount depositAmount:Double){
    let depositWithBonus = finalDepositWithBonus(fromInitialDeposit: depositAmount)
    print("Making a deposit of $\(depositAmount) with a bonus rate. The final amount deposited is $\(depositWithBonus). ")
    self.balance += depositWithBonus
  }

  func displayBalance(usingPassword password:String){
    if isValid(password){
      print("Your current balance is $\(self.balance)")
    }else{
      print("Error: Invalid password. Cannot retrieve balance.")
    }
  }

  mutating func makeWithdrawal(ofAmount withdrawalAmount:Double, usingPassword password:String){
    if isValid(password){
      self.balance-=withdrawalAmount
      print("Making a $\(withdrawalAmount) withdrawal")
    }else{
      print("Error: Invalid password. Cannot make withdrawal.")
    }
  }

  private func displayLowBalanceMessage(){
    print("Alert: Your balance is under $100")
  }
}

var myAccount = SwiftBank(password: "pass", initialDeposit: 500)
myAccount.makeDeposit(ofAmount: 50)
myAccount.makeWithdrawal(ofAmount: 100, usingPassword: "pass")
myAccount.displayBalance(usingPassword : "pass")