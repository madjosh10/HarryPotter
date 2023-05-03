//
//  SpellsCell.swift
//  HarryPotter
//
//  Created by Josh on 4/25/23.
//

import UIKit

class SpellsCell: UITableViewCell {
    
    @IBOutlet weak var spellTitle: UILabel!
    @IBOutlet weak var spellDescription: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(spell: SpellsData) {
        spellTitle.text = spell.name
        spellDescription.text = spell.description
        
    }

}
