//
//  Third.swift
//  Project 2
//
//  Created by Gabriela Garcia on 11/6/19.
//  Copyright © 2019 Gabriela Garcia. All rights reserved.
//



import UIKit
import Foundation

class Third :UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var continueButton: UIButton!
    
    
    var calendar: Calendar?
    var dateComponents: DateComponents?
    var targetDate: Date?
    
    
    
    
    override func viewDidLoad() {
        calendar = Calendar.current
        dateComponents = DateComponents(calendar: self.calendar, year: 2019, month: 12, day: 25)
        targetDate = calendar?.date(from: dateComponents!)
        activityIndicator.startAnimating()
    }
    
    func actionCompleted() -> Bool{
        if calendar!.isDate(datePicker.date, inSameDayAs: targetDate!){
            self.activityIndicator.stopAnimating()
    }
    return calendar!.isDate(datePicker.date, inSameDayAs: targetDate!)
    }
    
    @IBAction func dateChanged(_ sender: Any) {
        
        continueButton.isEnabled = actionCompleted()
    }
    
}
