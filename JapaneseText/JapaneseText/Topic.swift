//
//  Topic.swift
//  JapaneseText
//
//  Created by Xian-Meng Low on 2019-04-09.
//  Copyright © 2019 Xian-Meng Low. All rights reserved.
//

import Foundation

class Topic{
    var name : String
    var subtopics : [Subtopic] = []
    
    init? (object: [String: AnyObject]){
        self.name = (object["name"] as? String)!
        let subtopics = object["subtopics"] as? [[String: AnyObject]]
        for subtopic in subtopics!{
            self.subtopics.append(Subtopic(object: subtopic)!)
        }
    }
}
