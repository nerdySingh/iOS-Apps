//
//  ViewController.swift
//  FirstDemo
//
//  Created by Tanveer Anand on 30/04/15.
//  Copyright (c) 2015 Tanveer Anand. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var simpleTextField: UITextField!
    
    
    @IBOutlet weak var simpleLabel: UILabel!
    

    @IBAction func changeLabel(sender: AnyObject)
    {
        simpleLabel.text="hello," + simpleTextField.text + "!";
        
        self.simpleTextField.resignFirstResponder();
        
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
    
        textField.resignFirstResponder();
        return false;
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        self.view.endEditing(true);
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    


}

