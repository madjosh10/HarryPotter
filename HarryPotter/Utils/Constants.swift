//
//  Constants.swift
//  HarryPotter
//
//  Created by Josh on 2/16/23.
//

import Foundation

import UIKit
import Foundation

let BLACK_BG = UIColor.black.withAlphaComponent(0.8).cgColor

let BASE_URL = URL(string:"https://hp-api.onrender.com/api/characters")
let STUDENT_URL = URL(string: "https://hp-api.onrender.com/api/characters/students")
let STAFF_URL = URL(string: "https://hp-api.onrender.com/api/characters/staff")
let SPELLS_URL = URL(string: "https://hp-api.onrender.com/api/spells")
let BASE_HOUSE_URL = URL(string: "https://hp-api.onrender.com/api/characters/house")

let gryffindorRed = UIColor.init(red: 116/255, green: 0/255, blue: 1/255, alpha: 0.0)
let gryddindorGold = UIColor(red: 211, green: 166, blue: 37, alpha: 0.0)

let slytherinGreen = UIColor(red: 26, green: 71, blue: 42, alpha: 0.0)
let slytherinSilver = UIColor(red: 93, green: 93, blue: 93, alpha: 0.0)

let hufflepuffYellow = UIColor(red: 255, green: 216, blue: 0, alpha: 0.0)
let hufflepuffBlack = UIColor(red: 0, green: 0, blue: 0, alpha: 0.0)

let ravenclawBlue = UIColor(red: 14, green: 26, blue: 64, alpha: 0.0)
let ravenclawBronze = UIColor(red: 148, green: 107, blue: 45, alpha: 0.0)


let HOME = "home"

// identifiers
let CATEGORY_CELL : String = "categoryCell"
let TO_CATEGORY_SELECTED : String = "toCategorySelected"
