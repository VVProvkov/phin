//
//  TransactionsViewController.swift
//  Phin
//
//  Created by Vadim on 16.10.2021.
//

import UIKit

class TransactionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var account = Account(name: "First")
    

    
    
    @IBOutlet weak var IncomeButton: UIButton!
    @IBOutlet weak var consumtionButton: UIButton!
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
       
        account.income(transaction: Transaction(type: nil, note: "First", categoty: nil, summ: 56, date: nil))
    }

    // MARK: - BUTTONS
    
    @IBAction func consumptionAction(_ sender: UIButton) {
    
        
    }
    
    @IBAction func incomeAction(_ sender: UIButton) {
    }
    
    
    
    
    
    // MARK: - DATA SOURCE
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return account.transactions.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let transactions = account.transactions
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TransactionsTableViewCell
        cell.transactionLabel.text = transactions[indexPath.row].note
        cell.categorylabel.text = transactions[indexPath.row].categoty?
        .rawValue
        cell.summLabel.text = String(transactions[indexPath.row].summ)
        return cell
    }
    

    
    
    
    
    
    
}
