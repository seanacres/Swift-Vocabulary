//
//  VocabularyController.swift
//  Swift Vocabulary
//
//  Created by Sean Acres on 5/28/19.
//  Copyright © 2019 Sean Acres. All rights reserved.
//

import Foundation

class VocabularyController {
    let vocabWords: [VocabularyWord]
    
    init() {
        self.vocabWords = [VocabularyWord(word: "Page view", definition: "an instance of a user viewing an individual page on a website"),
                           VocabularyWord(word: "On-brand", definition: "typical of a particular brand or public image or identity"),
                           VocabularyWord(word: "Garbage time", definition: "the final moments or minutes of a game in which one side has an insurmountable lead"),
                           VocabularyWord(word: "Go-cup", definition: "a plastic or paper cup used especially for taking a beverage off the premises of a bar, restaurant, etc"),
                           VocabularyWord(word: "Screen time", definition: "This first referred to the amount of time someone appeared in front of a camera in a movie (a use dating back to the golden age of Hollywood) and now referring to time spent in front of a screen")]
    }
}
