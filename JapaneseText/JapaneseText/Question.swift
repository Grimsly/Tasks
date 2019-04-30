//
//  Questions.swift
//  JapaneseText
//
//  Created by Xian-Meng Low on 2019-04-08.
//  Copyright © 2019 Xian-Meng Low. All rights reserved.
//

import Foundation

class Question{
    var question : String
    var answer : String
    
    init? (question: String, answer: String){
        self.question = question
        self.answer = answer
    }
}
