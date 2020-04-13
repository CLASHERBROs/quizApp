//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
  var quizBrain = QuizBrain()
    
    var timer = Timer()
   
    
    
        
   
    override func viewDidLoad() {
        super.viewDidLoad()
       updateUI()
        
        
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
   let userAnswer = sender.currentTitle!
        
  
       
  
 if quizBrain.checkAnswer(userAnswer)
 {
    sender.backgroundColor = UIColor.green
    
    }
        else
 {
    sender.backgroundColor = UIColor.red
        }
        quizBrain.nextQuestion()
        
    
        
        timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
         
    
  
    }

    
    @objc func updateUI() {
     
        progressBar.setProgress(quizBrain.getProgress(), animated: true)
        questionLabel.text = quizBrain.getQuestionText()
        scoreLabel.text = "Score:\(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
    
}

