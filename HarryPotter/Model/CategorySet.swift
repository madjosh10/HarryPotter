//
//  CategorySet.swift
//  HarryPotter
//
//  Created by Josh on 2/16/23.
//

import Foundation

struct CategorySet {
    let people_Categories = [
        Category(title: "All", imageName: "students"),
        Category(title: "Students", imageName: "students"),
        Category(title: "Staff", imageName: "staff"),
    ]
    
    let houses = [
        Category(title: "Gryffindor", imageName: ""),
        Category(title: "Slytherin", imageName: ""),
        Category(title: "Hufflepuff", imageName: ""),
        Category(title: "Raveclaw", imageName: "")
    ]
}
