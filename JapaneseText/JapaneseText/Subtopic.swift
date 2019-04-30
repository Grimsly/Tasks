//
//  Subtopic.swift
//  JapaneseText
//
//  Created by Xian-Meng Low on 2019-04-09.
//  Copyright © 2019 Xian-Meng Low. All rights reserved.
//

import Foundation

class Subtopic{
    var name : String
    var subjects : [Subject] = []
    
    init? (object: [String: AnyObject]){
        self.name = (object["name"] as? String)!
        let subjects = object["subjects"] as? [[String: AnyObject]]
        for subject in subjects!{
            self.subjects.append(Subject(object: subject)!)
        }
    }
}
