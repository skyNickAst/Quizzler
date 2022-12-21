//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Nikolai Astakhov on 21.12.2022.
//

import Foundation

struct QuizBrain {
    let question: String
    let answers: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], ca: String) {
        question = q
        answers = a
        correctAnswer = ca
    }
}

let questions = [
    QuizBrain(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], ca: "Skin"),
    QuizBrain(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], ca: "100"),
    QuizBrain(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], ca: "Greenwich Mean Time"),
    QuizBrain(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], ca: "Chapeau"),
    QuizBrain(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], ca: "Watch"),
    QuizBrain(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], ca: "Adiós"),
    QuizBrain(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], ca: "Orange"),
    QuizBrain(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], ca: "Rum"),
    QuizBrain(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], ca: "Gorilla"),
    QuizBrain(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], ca: "Australia")
]
