//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Nikolai Astakhov on 21.12.2022.
//

import Foundation

struct QuizBrain {
    let question: String
    let answer1: String
    let answer2: String
    let answer3: String
    let correctAnswer: String
}

let quizArray = [QuizBrain(question: "QW-1", answer1: "a1", answer2: "a2", answer3: "a3", correctAnswer: "a3"),
                 QuizBrain(question: "QW-2", answer1: "a11", answer2: "a22", answer3: "a33", correctAnswer: "a33"),
                 QuizBrain(question: "QW-3", answer1: "a111", answer2: "a222", answer3: "a333", correctAnswer: "a333"),
                 QuizBrain(question: "QW-4", answer1: "a1111", answer2: "a2222", answer3: "a3333", correctAnswer: "a3333"),
                 QuizBrain(question: "QW-5", answer1: "a11111", answer2: "a22222", answer3: "a33333", correctAnswer: "a33333"),
]
