//
//  ViewController.swift
//  Project practice
//
//  Created by Жадаев Алексей on 01.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var targetDayLabel: UILabel!
    
    @IBAction func findTheDay(_ sender: UIButton) {
        
        guard let day = dayTextField.text, let month = monthTextField.text, let year = yearTextField.text else {return}
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        dateFormatter.dateFormat = "EEEE"
        
        guard let targetDate = calendar.date(from: dateComponents) else {return}
        
        let targetDay = dateFormatter.string(from: targetDate)
        let capitalizeTargetDay = targetDay.capitalized
        targetDayLabel.text = capitalizeTargetDay
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}


