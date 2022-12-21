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
    let totalQuestions = quizArray.count
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(qNum: questionNumber)
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {

        if sender.currentTitle! == quizArray[questionNumber].correctAnswer { // checking answer
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
        questionText.text = quizArray[qNum].question
        topButton.setTitle(quizArray[qNum].answer1, for: .normal)
        middleButton.setTitle(quizArray[qNum].answer2, for: .normal)
        bottomButton.setTitle(quizArray[qNum].answer3, for: .normal)
        
    }
}

