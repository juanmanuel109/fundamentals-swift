class VirtualBankSystem {
    var accountType = ""
    func welcomeCustomer(){
        print("welcome to your bank")
    }
    func onboardCustomerAccountOpening () {
        print("chose the option about the count")
        print("1.debit")
        print("2.credit")
    }
    func makeAccount (numberPadKey: Int){
        print("you chose the option \(numberPadKey) ")
        switch numberPadKey {
        case 1:
            accountType = "debit"
        case 2:
            accountType = "credit"
        default:
        print("please select a correct option")
            return
        }
        print("good, you created a \(accountType) account")
    }
}
   let virtualBankSystem = VirtualBankSystem()
   virtualBankSystem.welcomeCustomer()
repeat{
    virtualBankSystem.onboardCustomerAccountOpening()
    print("select the account")
    let numberPadKey = Int.random(in: 1...3)
    virtualBankSystem.makeAccount(numberPadKey: numberPadKey)
} while  virtualBankSystem.accountType == ""

