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
                
                print("You have minimum balance for transation")
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
    }
    
    func sendCustMessage(){
        print("You have minimum balance \(accountBalance)")
        
    }
    
}

let myBank = GPayAccount(_openingBalance:1000)
myBank.withDrawnMoney(deductedMoney:500)
//: [Next](@next)
