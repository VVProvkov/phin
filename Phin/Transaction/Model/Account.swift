//
//  Count.swift
//  Phin
//
//  Created by Vadim on 16.10.2021.
//

import Foundation

class Account {
    
    var name: String
    var totalCountMoney: Int = 0
    var transactions: [Transaction] = []
    
    func income(transaction t: Transaction) {
        transactions.append(t)
        totalCountMoney += t.summ
    }
    
    func consumption(transaction t: Transaction) {
        transactions.append(t)
        totalCountMoney -= t.summ
    }
    
    
    init (name: String) {
        self.name = name
    }
}
