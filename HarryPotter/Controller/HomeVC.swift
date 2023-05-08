//
//  HomeVC.swift
//  HarryPotter
//
//  Created by Josh on 2/16/23.
//

import UIKit
import FirebaseAuth


class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    private let firebaseAuth = Auth.auth()

    @IBOutlet weak var tableView: UITableView!
    
    let data = CategorySet()
    var categoryToPass: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
//        navigationItem.leftBarButtonItem = "Logout"
        
        navigationItem.title = HOME
        
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        do {
            try firebaseAuth.signOut()
            dismiss(animated: true, completion: nil)
            
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.people_Categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: CATEGORY_CELL, for: indexPath) as? CategoryCell {
            
            cell.configureCell(category: data.people_Categories[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        categoryToPass = (data.people_Categories[indexPath.row].title)
        performSegue(withIdentifier: TO_CATEGORY_SELECTED, sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let peopleVC = segue.destination as? PeopleVC {
            peopleVC.selectedCategory = categoryToPass
        }
    }
}
