//
//  popupVC.swift
//  TableViewCreateDeleteDemo
//
//  Created by Arpit iOS Dev. on 11/05/24.
//

protocol datapass {
    func data(title: String, description: String)
}


import UIKit

class popupVC: UIViewController {
    
    @IBOutlet weak var popUpView: UIView!
    
    
    @IBOutlet weak var txtTitle: UITextField!
    
    @IBOutlet weak var txtDescription: UITextView!
    
    @IBOutlet weak var DoneBtnTapped: UIButton!
    
    var titlee = ""
    var descriptionn = ""
    
    var delegate: datapass?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUi()
        
        txtTitle.text = "\(titlee)"
        txtDescription.text = "\(descriptionn)"
    }
    
    func initUi(){
        self.popUpView.layer.cornerRadius = 12
        self.DoneBtnTapped.layer.cornerRadius = 12
        self.txtTitle.layer.borderWidth = 1
        self.txtDescription.layer.borderWidth = 1
    }
    
    @IBAction func DoneBtnTapped(_ sender: UIButton) {
        
        delegate?.data(title: self.txtTitle.text!, description: self.txtDescription.text!)
        
        self.dismiss(animated: true)
        
        
    }
    
}
