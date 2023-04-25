//
//  CategoryCell.swift
//  HarryPotter
//
//  Created by Josh on 2/16/23.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var routeImage: UIImageView!
    @IBOutlet weak var routeTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        routeImage.layer.cornerRadius = 10
        // Initialization code
    }

    func configureCell(category: Category) {
        routeImage.image = UIImage(named: category.imageName)
        routeTitle.text = category.title
    }

}
