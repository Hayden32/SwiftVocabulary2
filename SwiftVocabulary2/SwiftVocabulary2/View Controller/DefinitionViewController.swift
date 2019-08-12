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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
