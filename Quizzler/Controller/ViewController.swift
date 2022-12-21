//
//  ViewController.swift
//  Quizzler
//
//  Created by Nikolai Astakhov on 20.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionNumLabel: UILabel!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var middleButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    
    var questionNumber = 0
    let totalQuestions = questions.count
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(qNum: questionNumber)
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {

        if sender.currentTitle! == questions[questionNumber].correctAnswer { // checking answer
            questionText.text = "CORRECT!"
        } else {
            questionText.text = "WRONG!"
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // Looping Quiz
            self.questionNumber += 1
            if self.questionNumber < self.totalQuestions  {
                self.updateUI(qNum: self.questionNumber)
            } else {
                self.questionNumber = 0
                self.updateUI(qNum: self.questionNumber)
            }
        }
    }
    
    func updateUI(qNum: Int) {
        questionNumLabel.text = String("\(qNum + 1) / \(totalQuestions)")
        questionText.text = questions[qNum].question
        topButton.setTitle(questions[qNum].answers[0], for: .normal)
        middleButton.setTitle(questions[qNum].answers[1], for: .normal)
        bottomButton.setTitle(questions[qNum].answers[2], for: .normal)
        
    }
}

