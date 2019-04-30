//
//  HomeTableViewController.swift
//  JapaneseText
//
//  Created by Xian-Meng Low on 2019-04-08.
//  Copyright © 2019 Xian-Meng Low. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    var subjects : [Chapter] = []
    var selectedTopic : Topic?

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = Bundle.main.url(forResource: "topics", withExtension: "json")
        
        do {
            let data = try? Data(contentsOf: url!)
            let object = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)
            if let dictionary = object as? [String: AnyObject] {
                readJSONObject(object: dictionary)
            }
        } catch {
            print("Error reading JSON file")
        }
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "BackgroundPaper")!)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(false)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return subjects.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return subjects[section].name
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subjects[section].topics.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomePageCell", for: indexPath) as? OneLineTableViewCell else{
            fatalError("The dequed cell is not an instance of OneLineTableViewCell")
        }

        cell.title.text = subjects[indexPath.section].topics[indexPath.row].name

        return cell
    }
    
    func readJSONObject(object: [String: AnyObject]) {
        guard let chapters = object["chapters"] as? [[String: AnyObject]] else { return }
        
        for chapter in chapters{
            subjects.append(Chapter(object: chapter)!)
        }
    }
    // MARK: - Navigation
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedTopic = subjects[indexPath.section].topics[indexPath.row]
        self.performSegue(withIdentifier: "HomeToTopic", sender: self)
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let topicController = segue.destination as? TopicTableViewController{
            topicController.topicTitle = selectedTopic!.name
            topicController.subtopics = selectedTopic!.subtopics
        }
    }

}
