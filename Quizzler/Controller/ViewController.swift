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
    var correctAnswers = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(qNum: questionNumber)
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        enableButtons(state: false)
        if sender.currentTitle! == questions[questionNumber].correctAnswer { // checking answer
            questionText.text = "CORRECT!"
            correctAnswers += 1
        } else {
            questionText.text = "WRONG!"
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in // Looping Quiz
            questionNumber += 1
            enableButtons(state: true)
            if questionNumber < totalQuestions  {
                updateUI(qNum: questionNumber)
            } else {
                performSegue(withIdentifier: "ResultScreen", sender: self)
                questionNumber = 0
                correctAnswers = 0
                updateUI(qNum: questionNumber)
            }
        }
    }
    
    func enableButtons(state: Bool) {
        topButton.isEnabled = state
        middleButton.isEnabled = state
        bottomButton.isEnabled = state
    }
    
    func updateUI(qNum: Int) {
        questionNumLabel.text = String("\(qNum + 1) / \(totalQuestions)")
        questionText.text = questions[qNum].question
        topButton.setTitle(questions[qNum].answers[0], for: .normal)
        middleButton.setTitle(questions[qNum].answers[1], for: .normal)
        bottomButton.setTitle(questions[qNum].answers[2], for: .normal)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultScreen" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.correctAnswers = correctAnswers
            destinationVC.totalQuestions = totalQuestions
        }
    }
}

