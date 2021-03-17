//
//  BankAccount.swift
//  BankLab2
//
//  Created by Amir Ahmed on 2020-06-22.
//  Copyright © 2020 Amir Ahmed. All rights reserved.
//
public class BankAccount {
    //stored properties
    
    var accountNumber: Int = 20000
    
    var customerName: String = "amir ahmed"
   // didset
    var yearlyInterestRate: Double = 0.6 {
    didSet {
        if yearlyInterestRate < 0.1 && yearlyInterestRate > 0.2 {
                yearlyInterestRate = oldValue
            }
        }
    }
    
    var accountBalance : Double = 1200.00 {
    didSet {
        if accountBalance < 0.0 && accountBalance > 10.00 {
                accountBalance = oldValue
            }
        }
    }
    
    //initializers
    public init() {}
    
    public init(accountNumber: Int, customerName: String, yearlyInterestRate: Double, accountBalance: Double){
        self.accountBalance = accountBalance
        self.accountNumber = accountNumber
        self.customerName = customerName
        self.yearlyInterestRate = yearlyInterestRate
    }
    
//

    
  
    
    public func credit(amount: Double) {
        // if amount is valid, add it to the balance
        if amount > 0.0 {
            accountBalance = accountBalance + amount
        }
    } // end method
    
    public func debit(amount : Double){
    if amount > 0.0 {
            if  accountBalance - amount >= 00 {
                accountBalance = accountBalance - amount
            }
        }
    }
    
    
    
}

