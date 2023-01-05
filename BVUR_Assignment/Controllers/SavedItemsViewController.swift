//
//  SavedItemsViewController.swift
//  BVUR_Assignment
//
//  Created by Ziad Alfakharany on 05/01/2023.
//

import UIKit

class SavedItemsViewController:  UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let dataSource: [String] = ["img1","img2","img3","img4","img5","img6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = SavedItemsCollectionViewCell()
        
        if let imageCell = collectionView.dequeueReusableCell(withReuseIdentifier: "reuseableCell", for: indexPath) as? SavedItemsCollectionViewCell {
            imageCell.configure(with: dataSource[indexPath.row])
            cell = imageCell
        }
        
        return cell
    }
    
}
