//
//  StartCell.swift
//  Focus
//
//  Created by Swayam Barik on 7/1/16.
//  Copyright © 2016 Swayam Barik. All rights reserved.
//

import Foundation
import UIKit

class StartCell: UITableViewCell, UITextFieldDelegate{
    @IBOutlet weak var timePicker: UIDatePicker!
    @IBOutlet weak var timeField: UITextField!

    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField ){
        if textField == timeField {
            let timePicker = UIDatePicker()
            textField.inputView = timePicker
            timePicker.addTarget(self, action: #selector(StartCell.timePickerChanged(_:)), forControlEvents: .ValueChanged)
        }
    }
    
    func timePickerChanged(sender: UIDatePicker){
        let formatter = NSDateFormatter()
        formatter.dateStyle = .FullStyle
        timeField.text = formatter.stringFromDate(sender.date)
    }

    
    
    
//    init(time:String) {
//        super.init(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, UIScreen.mainScreen().bounds.size.height))
//        
//        setupView()
//        let dateFormatter = NSDateFormatter()
//        dateFormatter.dateFormat =  "HH:mm"
//        
//        if let date = dateFormatter.dateFromString("17:00") {
//            datePicker.date = date
//        }
//    }
    
    
    @IBAction func timePickerAction(sender: AnyObject)
    {
        
        self.textFieldDidBeginEditing(timeField)
        
        
        
        
//                let dateFormatter = NSDateFormatter()
//        dateFormatter.dateFormat =  "HH:mm"
//        
//        if let date = dateFormatter.dateFromString.hours("17:00") {
//            timePicker.date = date
//        }
//        
//        startTimeLabel.text = ""
//        let strDate = dateFormatter.stringFromDate(timePicker.date)
//        self.startTimeLabel.text = String(strDate)
//        startTimeLabel.text = "17:00"
//        let dateFormatter = NSDateFormatter()
//        dateFormatter.dateFormat = "HH:mm"
//        let dateString = dateFormatter.stringFromDate(timePicker.date)
//        startTimeLabel.text = String(dateString)
        
    }
}
