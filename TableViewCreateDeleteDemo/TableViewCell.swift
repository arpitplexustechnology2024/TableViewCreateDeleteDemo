//
//  TableViewCell.swift
//  TableViewCreateDeleteDemo
//
//  Created by Arpit iOS Dev. on 10/05/24.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
