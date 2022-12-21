//
//  ResultViewController.swift
//  Quizzler
//
//  Created by Nikolai Astakhov on 21.12.2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultMessage: UILabel!
   
    var correctAnswers: Int?
    var totalQuestions: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultMessage.textColor = messageColor(dependsOf: correctAnswers ?? 0, and: totalQuestions ?? 0)
        resultMessage.text = String("\(correctAnswers!) out of \(totalQuestions!) answers are correct!")
    }
    
    func messageColor(dependsOf correctAnswers: Int, and totalQuestions: Int) -> UIColor {
        let x = totalQuestions / 4
        if correctAnswers <= x {
            return .systemRed
        } else if correctAnswers >= (x * 3) {
            return .systemGreen
        } else {
            return .systemYellow
        }
    }
    
    @IBAction func tryAgainButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    

}
