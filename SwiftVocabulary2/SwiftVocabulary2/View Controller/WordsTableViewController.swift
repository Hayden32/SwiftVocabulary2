//
//  WordsTableViewController.swift
//  SwiftVocabulary2
//
//  Created by Hayden Hastings on 8/12/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [ VocabularyWord(word: "Variable", definition: "Constants refer to fixed values that a program may not alter during its execution. Constants can be of any of the basic data types like an integer constant, a floating constant, a character constant, or a string literal."),
                                         VocabularyWord(word: "Constant", definition: "A variable provides us with named storage that our programs can manipulate."),
                                         VocabularyWord(word: "Boolean", definition: "Create instances of Bool by using one of the Boolean literals true or false , or by assigning the result of a Boolean method or operation to a variable or constant.")
        
    ]
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let vocabWord = vocabWords[indexPath.row]
        
        cell.textLabel?.text = vocabWord.word
        
        return cell
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinition" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let wordDetailVC = segue.destination as? DefinitionViewController else { return }
            
            let cellWord = vocabWords[indexPath.row]
            
            wordDetailVC.vocabWord = cellWord
            
        }
    }
}
