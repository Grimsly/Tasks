//
//  TopicTableViewController.swift
//  JapaneseText
//
//  Created by Xian-Meng Low on 2019-04-09.
//  Copyright © 2019 Xian-Meng Low. All rights reserved.
//

import UIKit

class TopicTableViewController: UITableViewController {
    
    var topicTitle : String = ""
    var subtopics : [Subtopic] = []
    var selectedSubject : [Question] = []
    @IBOutlet weak var topicNavigationBar: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topicNavigationBar.title = topicTitle
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return subtopics.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return subtopics[section].name
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subtopics[section].subjects.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "subtopicCell", for: indexPath) as? OneLineTableViewCell else{
            fatalError("The dequed cell is not an instance of OneLineTableViewCell")
        }
        
        cell.title.text = subtopics[indexPath.section].subjects[indexPath.row].name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedSubject = subtopics[indexPath.section].subjects[indexPath.row].questions
        self.performSegue(withIdentifier: "TopicToQuestion", sender: self)
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let questionController = segue.destination as? QuestionViewController{
            questionController.questions = selectedSubject
        }
    }
}
