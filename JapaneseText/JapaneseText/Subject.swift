//
//  Subject.swift
//  JapaneseText
//
//  Created by Xian-Meng Low on 2019-04-09.
//  Copyright © 2019 Xian-Meng Low. All rights reserved.
//

import Foundation

class Subject{
    var name : String
    var questions : [Question] = []
    
    init? (object: [String: AnyObject]){
        self.name = (object["name"] as? String)!
        let questions = object["questions"] as? [[String: AnyObject]]
        for question in questions!{
            guard let subject = question["question"] as? String,
                let answer = question["answer"] as? String
                else{
                    return nil
            }
            self.questions.append(Question(question: subject, answer: answer)!)
        }
    }
}
