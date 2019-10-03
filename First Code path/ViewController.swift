//
//  ViewController.swift
//  First Code path
//
//  Created by Saheed andrew on 9/29/19.
//  Copyright © 2019 Saheed andrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func billField(_ sender: Any) {
    }
    
 
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipLabel: UILabel!

    @IBAction func onClick(_ sender: Any) {
        print("hello")
        view.endEditing(true)
//        view.backgroundColor = .gray
        
        view.backgroundColor = UIColor(patternImage: UIImage(named:"blue")!)
    }
    
    @IBAction func calculator(_ sender: Any) {
        let bill = Double (billField.text!) ??  0
        
        let tipPercenteges = [0.15,0.18,0.2]
        
        let tip = bill * tipPercenteges[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String (format: "$%.2f", tip)
        totalLabel.text = String (format: "$%.2f", total)
    }
  
    @IBAction func onBillClick(_ sender: Any) {
//        view.backgroundColor = .blue
        view.backgroundColor = UIColor(patternImage: UIImage(named:"blue")!)
    }
//
//
//
//    }
    
    @IBOutlet weak var billField: UITextField!
    
}

