//
//  SecondViewController.swift
//  MidTerm
//
//  Created by Ted on 3/28/16.
//  Copyright © 2016 Ted.Company. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var typeHere: UITextField!
    @IBAction func renewHere(sender: AnyObject) {
        submitText()
    }
    @IBOutlet weak var showHere: UITextView!
    @IBOutlet weak var alertHere: UILabel!
    var tag = 0

    override func viewDidLoad() {
        super.viewDidLoad()
                // Do any additional setup after loading the view, typically from a nib.
    }
    
    func submitText() {
        if typeHere.text != "" {
            if tag < 3 {
                
                tag += 1
                alertHere.text = ""
                showHere.text.appendContentsOf(String(typeHere.text!) + "\n")
                typeHere.text = ""
                
            } else {
                alertHere.text = "只能簽三筆"
            }
        } else {
            alertHere.text = "名字不能留白"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

