//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Sean Acres on 5/28/19.
//  Copyright © 2019 Sean Acres. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionTitle: UILabel!
    @IBOutlet weak var definitionDescription: UITextView!
    
    var vocabWord: VocabularyWord? {
        didSet {
            updateViews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        if let unwrappedVocabWord = vocabWord {
            definitionTitle.text = unwrappedVocabWord.word
            definitionDescription.text = unwrappedVocabWord.definition
            
        }
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
