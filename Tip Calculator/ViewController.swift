//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Dharshan Bellan on 10/15/18.
//  Copyright © 2018 Dharshan Bellan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmt:
        UITextField!
    
    
    
    
    
    @IBOutlet weak var tipPercentage:
        UITextField!
    
    
    
    
    
    @IBOutlet weak var finalBill:
        UILabel!
    
    
    
    
    
    var input1: Double? {
        return Double(billAmt.text!)
    }
    
    
    
    @IBAction func calculateBill(_ sender: Any) {
        if let input1 = self.input1 as Double? {
            print(input1)
        }
    }
    
    func calculateBill(billAmount: Double, tipPercentage: Int) -> Double {
        let billTotal: Double = billAmount * (1.0 + (Double(tipPercentage) / 100))
        return billTotal
    }



    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(calculateBill(billAmount: 30, tipPercentage: 20))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

