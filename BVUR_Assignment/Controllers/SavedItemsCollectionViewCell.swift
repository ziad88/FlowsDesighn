//
//  SavedItemsCollectionViewCell.swift
//  BVUR_Assignment
//
//  Created by Ziad Alfakharany on 05/01/2023.
//

import UIKit

class SavedItemsCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var cellImage: UIImageView!
    
    func configure(with cellImageName: String) {
        cellImage.image = UIImage(named: cellImageName)
        cellImage.layer.cornerRadius = 8.0
        cellImage.clipsToBounds = true
    }
    
}
