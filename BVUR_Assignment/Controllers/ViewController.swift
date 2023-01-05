//
//  ViewController.swift
//  BVUR_Assignment
//
//  Created by Ziad Alfakharany on 05/01/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profilePic: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
            profilePic.layer.masksToBounds = false
            profilePic.layer.cornerRadius = profilePic.frame.height/2
            profilePic.clipsToBounds = true
    }

    
    @IBOutlet weak var heartButton: UIButton!
    
    @IBOutlet weak var bookmarkButton: UIButton!
    
    @IBAction func optionsButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func bookmarkButtonPressed(_ sender: UIButton) {
        let imageIcon = UIImage(systemName: "bookmark.fill")?.withTintColor(.white, renderingMode: .alwaysOriginal)
        bookmarkButton.setImage(imageIcon, for: .normal)
    }
    
    
    @IBAction func heartButtonPressed(_ sender: UIButton) {
        let imageIcon = UIImage(systemName: "heart.fill")?.withTintColor(.red, renderingMode: .alwaysOriginal)
        
        heartButton.setImage(imageIcon, for: .normal)
    }
    
    @IBAction func savedButtonPressed(_ sender: UIButton) {
    }
}

