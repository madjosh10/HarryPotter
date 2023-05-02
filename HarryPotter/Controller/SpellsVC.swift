//
//  SpellsVC.swift
//  HarryPotter
//
//  Created by Josh on 4/5/23.
//

import Foundation
import UIKit

class SpellsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    private var spellsArray: [SpellsData] = []
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        
        getSpells()
        
    }
    
    
    func getSpells() {
        URLSession.shared.request(
            url: SPELLS_URL,
            expecting: [SpellsData].self
        ) { [weak self] result in
            switch result {
            case .success(let spells):
                DispatchQueue.main.async {
                    self?.spellsArray = spells
                    self?.tableView.reloadData()
                }
            case .failure(let error):
                print(error)
            }
            
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return spellsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "spellCell", for: indexPath) as? SpellsCell {
            let spell = spellsArray[indexPath.item]
            cell.configureCell(spell: spell)
            
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
}

