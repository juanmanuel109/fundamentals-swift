struct  BankAccount {
    var debitBalance = 0
    var creditBalance = 0
    let creditLimit = 100
    var debitBalanceInfo : String {
    "debit balance $: \(debitBalance)"
    }
    var availableCredit : Int{
        creditLimit+creditBalance
    }
    var creditBalanceInfo :  String {
        "Available credit: $\(availableCredit)"
    }
    mutating func debitDeposit(_ amount : Int) {
        debitBalance += amount
        print("debit deposite $: \(amount). \(debitBalanceInfo)")
    }
    mutating func debitWithdraw(_ amount : Int) {
        if amount>debitBalance {
            print("Insufficient fund to withdraw $ \(amount). \(debitBalanceInfo)")
        }
        else {
           debitBalance -= amount
            print("Debit withdraw: $ \(amount). \(debitBalanceInfo)")
        }
    }

    mutating func creditDeposit (_ amount : Int){
        creditBalance += amount
        print("credit deposite $: \(amount). \(creditBalanceInfo)")
        if creditBalance == 0 {
            print("saldo credito pagado")
        }
        else if creditBalance > 0 {
            print("Saldo de crédito pagado en exceso")
        }
    }
    
    mutating func creditWithdraw(_ amount : Int) {
        if amount>availableCredit {
            print("Insufficient fund to withdraw $ \(amount). \(creditBalanceInfo)")
        }
        else {
           creditBalance -= amount
            print("credit withdraw: $ \(amount). \(creditBalanceInfo)")
        }
    }
}
var bankAccount = BankAccount()
print("\(bankAccount.debitBalanceInfo)")
bankAccount.debitDeposit(100)
bankAccount.debitWithdraw(20)
bankAccount.debitWithdraw(81)
print(bankAccount.creditBalanceInfo)
bankAccount.creditWithdraw(101)
bankAccount.creditWithdraw(100)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(100)
