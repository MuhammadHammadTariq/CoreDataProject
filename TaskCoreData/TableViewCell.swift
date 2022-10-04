//
//  TableViewCell.swift
//  TaskCoreData
//
//  Created by Dotshape Dev on 28/09/2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var domains: UILabel!
    @IBOutlet weak var alphaTwoCode: UILabel!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var webPages: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var state: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
