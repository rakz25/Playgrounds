//: [Previous](@previous)

import Foundation

class GPayAccount {
    
    
    var accountBalance: Double
    {
        
        didSet {
            
            sendCustMessage()
        }
        willSet(newAccountBalance) {
            
            if newAccountBalance < 1000 {
                
                print("Cannot transaction because of low balance")
            }
        }
    }
    
    init(_openingBalance:Double){
        
        accountBalance = _openingBalance
        
    }
    
    func addMoney(receivedMoney:Double){
        
        accountBalance += receivedMoney
        
    }
    func withDrawnMoney(deductedMoney:Double){
        
        accountBalance -= deductedMoney
        print("Money Withdrawn \(deductedMoney)")
    }
    
    func sendCustMessage(){
        print("You have minimum balance \(accountBalance) for transaction")
        
    }
    
}

let myBank = GPayAccount(_openingBalance:75000)
myBank.addMoney(receivedMoney: 10000)
myBank.withDrawnMoney(deductedMoney:84500)
//: [Next](@next)
