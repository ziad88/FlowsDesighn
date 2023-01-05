//
//  HalfViewController.swift
//  BVUR_Assignment
//
//  Created by Ziad Alfakharany on 05/01/2023.
//
// half sized controller code is from https://stackoverflow.com/users/12020295/mpc75

import UIKit

class HalfViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
               let newView = UIView(frame: CGRect(x: 0, y: 500, width: self.view.frame.width, height: 400))
        newView.backgroundColor = .white
               newView.layer.cornerRadius = 20

               self.view = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))

               // self.view is now a transparent view, so now I add newView to it and can size it however, I like.

               self.view.addSubview(newView)

        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            label.center = CGPoint(x: 190, y: 520)
        label.textAlignment = .center
            label.text = "More Options"
        label.font = UIFont(name: "Marker Felt", size: 24)
        
        let button = createButton(imageName: "eye.slash", xaxis: 93, yaxis: 560, title: "  Not interested")
        button.tintColor = .black
        button.setTitleColor(.black, for: .normal)

        let button2 = createButton(imageName: "exclamationmark.triangle", xaxis: 65, yaxis: 610, title: "  Report")
        button2.tintColor = .red
        button2.setTitleColor(.red, for: .normal)
        
        self.view.addSubview(label)
        self.view.addSubview(button)
        self.view.addSubview(button2)

               // works without the tap gesture just fine (only dragging), but I also wanted to be able to tap anywhere and dismiss it, so I added the gesture below
               let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
               self.view.addGestureRecognizer(tap)
           }

           @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
               dismiss(animated: true, completion: nil)
           }
    
    
    func createButton(imageName: String,xaxis: Int, yaxis: Int, title: String ) -> UIButton {
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        let imageIcon = UIImage(systemName: imageName)
        button.center = CGPoint(x: xaxis, y: yaxis)
        button.setImage(imageIcon, for: .normal)
        button.setTitle(title, for: .normal)

        return button
    }
    
}



