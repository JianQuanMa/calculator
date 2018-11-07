//
//  ViewController.swift
//  calculator
//
//  Created by Jian Ma on 10/23/18.
//  Copyright © 2018 Jian Ma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen : Double = 0
    var numberOffScreen : Double = 0
    var isPerform : Bool = false
    var operation = 0
    
    @IBOutlet weak var labelOnScreen: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        if(isPerform){
            labelOnScreen.text = (String)(sender.tag - 1)
            
            isPerform = false
        }else{
            labelOnScreen.text = labelOnScreen.text! + String(sender.tag - 1 )
            
        }
        numberOnScreen = (Double)(labelOnScreen.text!)!
    }
    @IBAction func buttons(_ sender: UIButton) {
        
        if labelOnScreen.text != "" && sender.tag != 11 && sender.tag != 18 {
            
            numberOffScreen = (Double)(labelOnScreen.text!)!
            
            if(sender.tag==12){//+/- button
                
            }else if (sender.tag==13){//percentage button
                
            }else if (sender.tag==14){//devision sign button
                labelOnScreen.text = "/"
            }else if (sender.tag == 15){//multiplication sign button
                labelOnScreen.text = "*"
            }else if (sender.tag == 16){//subtract sign button
                labelOnScreen.text = "-"
            }else if (sender.tag == 17){//addiction sign button
                labelOnScreen.text = "+"
            }
            operation = sender.tag
            isPerform = true
        }else if sender.tag == 18{ // equal sign button
            if operation == 14{///
                labelOnScreen.text = String(numberOffScreen/numberOnScreen)
            }else if operation == 15{//*
                labelOnScreen.text = String(numberOffScreen*numberOnScreen)
            }else if operation == 16{//-
                labelOnScreen.text = String(numberOffScreen-numberOnScreen)
            }else if operation == 17{//+
                labelOnScreen.text = String(numberOffScreen+numberOnScreen)
                
            }
        }
        else if sender.tag == 11{
            reset()
        }
    }
    
    func reset() {
        numberOnScreen = 0
        numberOffScreen = 0
        labelOnScreen.text = ""
        operation = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

