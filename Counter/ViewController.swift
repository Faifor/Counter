//
//  ViewController.swift
//  Counter
//
//  Created by Данила Спиридонов on 21/10/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberUILabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        numberUILabel.text = "Значение счётчика: \(number)"
        // Do any additional setup after loading the view.
    }
   
    private var number = 0

    @IBAction func buttonDidTap(_ sender: Any) {
       number += 1
        numberUILabel.text = "Значение счётчика: \(number)"
    }
}

