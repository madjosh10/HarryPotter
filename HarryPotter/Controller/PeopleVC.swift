//
//  PeopleVC.swift
//  HarryPotter
//
//  Created by Josh on 2/16/23.
//

import UIKit

class PeopleVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var selectedCategory: String!
    var selectedIndex: Int = 0
    
    private var peopleArray: [PersonData] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = selectedCategory
        
        tableView.delegate = self
        tableView.dataSource = self
        
        switch selectedCategory.lowercased() {
            case "students":
                fetchStudent()
            case "staff":
                fetchStaff()
            default:
                break
        }
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
    }
    
    func fetchStudent() {
        URLSession.shared.request(
            url: STUDENT_URL,
            expecting: [PersonData].self
        ) { [weak self] result in
            switch result {
            case .success(let students):
                DispatchQueue.main.async {
                    self?.peopleArray = students
                    self?.tableView.reloadData()
                }
            case .failure(let error):
                print(error)
            }
            
        }
    }
    func fetchStaff() {
        URLSession.shared.request(
            url: STAFF_URL,
            expecting: [PersonData].self
        ) { [weak self] result in
            switch result {
            case .success(let staff):
                DispatchQueue.main.async {
                    self?.peopleArray = staff
                    self?.tableView.reloadData()
                }
            case .failure(let error):
                print(error)
            }
            
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "peopleCell", for: indexPath) as? PeopleCell {
            let person = peopleArray[indexPath.item]
            cell.configureCell(person: person)
            
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "goToDescriptionVC", sender: self)
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let descriptionVC = segue.destination as? DescriptionVC {
            descriptionVC.personChosen = peopleArray
            descriptionVC.personIndex = selectedIndex
        }
    }

} // end PeopleVC
