//
//  ViewController.swift
//  WhatDay
//
//  Created by Tanveer Anand on 23/06/15.
//  Copyright (c) 2015 Tanveer Anand. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func chooseDay(sender: AnyObject) {
    var chosenDate=self.datePicker.date
        var fomatter=NSDateFormatter()
        fomatter.dateFormat="EEEE"
        let day=fomatter.stringFromDate(chosenDate)
        let result="the day is \(day)"
        
        let myAlert=UIAlertController(title: result, message: nil, preferredStyle:UIAlertControllerStyle.Alert)
        myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(myAlert, animated: true, completion: nil)
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

