//
//  SecondVC.swift
//  TableViewCreateDeleteDemo
//
//  Created by Arpit iOS Dev. on 10/05/24.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    var imageView = ""
    var titleName = ""
    var descriptionn = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.ImageView.image = UIImage(named: imageView)
        self.lblTitle.text = titleName
        self.lblDescription.text = descriptionn
    }
  
}
