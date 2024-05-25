//
//  MultipleTableViewCell.swift
//  TableViewCreateDeleteDemo
//
//  Created by Arpit iOS Dev. on 15/05/24.
//

import UIKit

class MultipleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblCity: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
