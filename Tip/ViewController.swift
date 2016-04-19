//
//  ViewController.swift
//  Tip
//
//  Created by Peggy on 2016/4/17.
//  Copyright © 2016年 Peggy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountBeforeTax: UITextField!

    @IBOutlet weak var tipPercentage: UITextField!
    
    
    @IBOutlet weak var showTip: UILabel!
    
    
    
    @IBAction func calcTipButton(sender: UIButton) {
        var tip: Double?
        if let abt = amountBeforeTax.text , tp = tipPercentage.text  {
            if let doubleAbt = Double(abt) ,doubleTp = Double(tp) where doubleTp < 1  {
                tip = doubleAbt * doubleTp
            }
           
        }
        if let t = tip {
          self.showTip.text = "your tip: \(t)"
        }else{
            self.showTip.text = "no value"
        }
    }
    
    
}

