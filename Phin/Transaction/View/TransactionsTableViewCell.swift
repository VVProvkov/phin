//
//  TransactionsViewCell.swift
//  Phin
//
//  Created by Vadim on 19.10.2021.
//

import UIKit

class TransactionsTableViewCell: UITableViewCell {


    @IBOutlet weak var transactionLabel: UILabel!
    @IBOutlet weak var summLabel: UILabel!
    @IBOutlet weak var categorylabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
