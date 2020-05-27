//
//  ViewController.swift
//  SalesTax
//
//  Created by Andrei Cozma on 5/27/20.
//  Copyright © 2020 Andrei Cozma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var result: UILabel!
    @IBOutlet var price: UITextField!
    @IBOutlet var tax: UITextField!
    
  
    
    @IBAction func calculateTotal(_ sender: Any) {
        let prc = Double(price.text!) ?? 0.0
        let tx = Double(tax.text!) ?? 0.0
            
        let totalSalesTax = prc * (tx / 100.0)
        let totalPrice = prc + totalSalesTax
        
        result.text = "$\(totalPrice)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        
        result.text = "$0.00"
        // Do any additional setup after loading the view.
    }


}

