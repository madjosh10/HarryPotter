//
//  PeopleCell.swift
//  HarryPotter
//
//  Created by Josh on 2/16/23.
//

import UIKit

class PeopleCell: UITableViewCell {
    
    @IBOutlet weak var peopleName: UILabel!
    @IBOutlet weak var peopleHouse: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(person: PersonData) {
        peopleName.text = person.name
        if person.house == "" {
            peopleHouse.text = "Unknown"
        } else {
            peopleHouse.text = person.house
        }
        
    } // end configCell
    
} // end GenericCell
