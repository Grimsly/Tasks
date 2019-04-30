//
//  Chapter.swift
//  JapaneseText
//
//  Created by Xian-Meng Low on 2019-04-09.
//  Copyright © 2019 Xian-Meng Low. All rights reserved.
//

import Foundation

class Chapter {
    var name : String
    var topics : [Topic] = []
    
    init? (object: [String: AnyObject]){
        self.name = (object["name"] as? String)!
        print(name)
        let topics = object["topics"] as? [[String: AnyObject]]
        for topic in topics!{
            self.topics.append(Topic(object: topic)!)
        }
    }
}
