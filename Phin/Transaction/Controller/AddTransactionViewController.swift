//
//  AddTransactionViewController.swift
//  Phin
//
//  Created by Vadim on 19.10.2021.
//

import UIKit

class AddTransactionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
  

    @IBOutlet weak var summLabel: UILabel!
    @IBOutlet weak var noteLabel: UILabel!
    @IBOutlet weak var summTF: UITextField!
    @IBOutlet weak var noteTF: UITextField!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var categoryCV: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryCV.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func addButton(_ sender: UIButton) {
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let countCategories = Transaction.Category.allCases.count
        return countCategories
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let category = Transaction.Category.allCases[indexPath.row].rawValue
        
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCollectionView", for: indexPath) as! AddCollectionViewCell
        item.categoryLabel.text = category
        return item
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
