//
//  ViewController.swift
//  Counter
//
//  Created by Данила Спиридонов on 21/10/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberUILabel: UILabel!
    @IBOutlet weak var removeNumberButton: UIButton!
    @IBOutlet weak  var dateText: UITextView!
    @IBOutlet weak var addNumberButton: UIButton!
    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        numberUILabel.text = "Значение счётчика: \(number)"
        dateText.text = "История изменений:\n"
        dateText.isEditable = false
        dateText.isScrollEnabled = true
        
    }
    private var number = 0
    
    @IBAction func addButton(_ sender: Any) {
        number += 1
         numberUILabel.text = "Значение счётчика: \(number)"
        updateHistory(action: "значение изменено на +1")

    }
    
    @IBAction func removeButton(_ sender: Any) {
        if number > 0 {
            number -= 1
            numberUILabel.text = "Значение счётчика: \(number)"
           updateHistory(action: "значение изменено на -1")
        } else {
            updateHistory(action: "попытка уменьшить значение счётчика ниже 0")
        }
         

    }
    

    @IBAction func buttonDidTap(_ sender: Any) {
        number = 0
         numberUILabel.text = "Значение счётчика: \(number)"
        updateHistory(action: "значение сброшено")

    }
    
    func updateHistory(action: String) {
         let dateFormatter = DateFormatter()
         dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
         let currentDate = dateFormatter.string(from: Date())
         dateText.text += "\(currentDate): \(action)\n"
         
        dateText.scrollRangeToVisible(NSRange(location:dateText.text.count, length: 0))
     }

}

