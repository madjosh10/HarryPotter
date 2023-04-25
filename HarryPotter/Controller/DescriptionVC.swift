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
    
    var personChosen: [PersonData]!
    var personIndex: Int!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        navigationItem.title = personChosen[personIndex].eyeColour
        guard let DOB = personChosen[personIndex].dateOfBirth else { return }
        
        
        print(personChosen[personIndex].name)
//        actorLabel.text = "Actor: \(personChosen[personIndex].actor)"
        actorLabel.text = "Actor: \(personChosen[personIndex].actor)"
        ancestoryLabel.text = "Ancestory: \(personChosen[personIndex].ancestry)"
        DOBLabel.text = "DOB: \(DOB)"
        houseLabel.text = "House: \(personChosen[personIndex].house)"
    
        
    }
    
    func settingUpView() {
        let person = personChosen[personIndex]
        guard let DOB = person.dateOfBirth else { return }

        
    } // settingUpView

} // DescriptionVC
