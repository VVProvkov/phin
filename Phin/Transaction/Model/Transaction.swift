//
//  Transaction.swift
//  Phin
//
//  Created by Vadim on 16.10.2021.
//

import Foundation



struct Transaction {
    
    enum Category: String, CaseIterable {
        case food = "🍽"
        case wear = "👕"
        case health = "💊"
        case sports = "🏋️‍♂️"
    }
    
    enum TypeTransaction {
        case income
        case consumption
    }
    
    var type: TypeTransaction?
    var note: String
    var categoty: Category?
    var summ: Int
    var date: Date?
    
}
