//
//  QuestionViewController.swift
//  JapaneseText
//
//  Created by Xian-Meng Low on 2019-04-09.
//  Copyright © 2019 Xian-Meng Low. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var questions : [Question] = []
    var number : Int = 0
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerChecker: UILabel!
    @IBOutlet weak var questionCount: UILabel!
    @IBOutlet weak var answerTextbox: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[number].question
        questionCount.text = "\(number + 1)/\(questions.count)"
    }
    
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        if (answerTextbox.text == questions[number].answer){
            answerChecker.text = "正しい"
            answerChecker.textColor = .green
        }else{
            answerChecker.text = questions[number].answer
            answerChecker.textColor = .red
        }
    }
    
    @IBAction func nextQuestionPressed(_ sender: UIButton) {
        if (number < questions.count - 1){
            number += 1
            questionLabel.text = questions[number].question
            answerTextbox.text = ""
            answerChecker.text = ""
            questionCount.text = "\(number + 1)/\(questions.count)"
            if (number == questions.count - 1){
                nextButton.isHidden = true
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
