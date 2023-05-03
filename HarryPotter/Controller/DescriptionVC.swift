//
//  DescriptionVC.swift
//  HarryPotter
//
//  Created by Josh on 2/17/23.
//

import UIKit

class DescriptionVC: UIViewController {
    
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var wizardLabel: UILabel!
    @IBOutlet weak var eyeColourLabel: UILabel!
    @IBOutlet weak var hairColourLabel: UILabel!
    @IBOutlet weak var patronusLabel: UILabel!
    @IBOutlet weak var hogwartsStudent: UILabel!
    @IBOutlet weak var hogwartsStaff: UILabel!
    
    @IBOutlet weak var actorLabel: UILabel!
    @IBOutlet weak var ancestoryLabel: UILabel!
    @IBOutlet weak var DOBLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!
    
    var person: PersonData!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.name
        settingUpView(personChosen: person)
        
    }

    
    func settingUpView(personChosen person: PersonData) {
        // nil coalescing
        let DOB:String = person.dateOfBirth ?? "Not Given"
        let yearOfBith: Int = person.yearOfBirth ?? 0
        
        

        actorLabel.text = "Actor: \(person.actor)"
        speciesLabel.text = "Species: \(person.species)"
        ancestoryLabel.text = "Ancestory: \(person.ancestry)"
        DOBLabel.text = "DOB: \(DOB)"
        houseLabel.text = "House: \(person.house)"
        genderLabel.text = "Gender: \(person.gender)"
        wizardLabel.text = "Wizard: \(person.wizard)"
        eyeColourLabel.text = "Eye Color: \(person.eyeColour)"
        hairColourLabel.text = "Hair Color: \(person.hairColour)"
        patronusLabel.text = "Patronus: \(person.patronus)"
        hogwartsStaff.text = "Staff: \(person.hogwartsStaff)"
        hogwartsStudent.text = "Student: \(person.hogwartsStudent)"
        
        
    } // settingUpView

} // DescriptionVC
