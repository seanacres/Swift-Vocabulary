//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Sean Acres on 5/28/19.
//  Copyright © 2019 Sean Acres. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabController = VocabularyController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabController.vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

       cell.textLabel?.text = vocabController.vocabWords[indexPath.row].word

        return cell
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDefinition" {
            guard let definitionVC = segue.destination as? DefinitionViewController,
                  let indexPath = self.tableView.indexPathForSelectedRow else { return }
            
            let vocabWord = vocabController.vocabWords[indexPath.row]
            
            definitionVC.vocabWord = vocabWord
            
        }
    }
}
