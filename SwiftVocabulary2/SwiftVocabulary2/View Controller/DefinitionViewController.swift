//
//  DefinitionViewController.swift
//  SwiftVocabulary2
//
//  Created by Hayden Hastings on 8/12/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?

    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var wordDefinitionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        if let vocabWord = vocabWord {
            title = vocabWord.word
            wordLabel.text = vocabWord.word
            wordDefinitionTextView.text = vocabWord.definition
        }
    }
}
