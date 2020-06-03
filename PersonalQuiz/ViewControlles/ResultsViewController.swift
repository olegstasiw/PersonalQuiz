//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 01.06.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var animalTypeLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!

    private var dogCount = 0
    private var catCount = 0
    private var rabbitCount = 0
    private var turtleCount = 0

    var results = [Answer]()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated: true)

        for result in results {
            switch result.type {
            case .dog: dogCount += 1
            case .cat: catCount += 1
            case .turtle: turtleCount += 1
            case .rabbit: rabbitCount += 1
            }
        }
        if dogCount > catCount
            && dogCount > rabbitCount
            && dogCount > turtleCount {
            animalTypeLabel.text = "Вы - \(AnimalType.dog.rawValue)"
            definitionLabel.text = AnimalType.dog.definition
        } else if catCount > dogCount
            && catCount > rabbitCount
            && catCount > turtleCount {
            animalTypeLabel.text = "Вы - \(AnimalType.cat.rawValue)"
            definitionLabel.text = AnimalType.cat.definition
        } else if rabbitCount > dogCount
            && rabbitCount > catCount
            && rabbitCount > turtleCount {
            animalTypeLabel.text = "Вы - \(AnimalType.rabbit.rawValue)"
            definitionLabel.text = AnimalType.rabbit.definition
        } else if turtleCount > dogCount
            && turtleCount > catCount
            && turtleCount > rabbitCount {
            animalTypeLabel.text = "Вы - \(AnimalType.turtle.rawValue)"
            definitionLabel.text = AnimalType.turtle.definition
        } else {
            animalTypeLabel.text = "Вы - \(AnimalType.turtle.rawValue)"
            definitionLabel.text = AnimalType.turtle.definition
        }
    }
    
    deinit {
        print("ResultsViewController has been dealocated")
    }

}
