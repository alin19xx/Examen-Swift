//
//  TableViewCellCustom.swift
//  Examen
//
//  Created by Alex Lin on 13/03/2019.
//  Copyright © 2019 Alex Lin. All rights reserved.
//

import UIKit

class TableViewCellCustom: UITableViewCell {
    
    
    
    @IBOutlet weak var imgButterfly: UIImageView!
    @IBOutlet weak var tipoButterfly: UILabel!
    @IBOutlet weak var nombreButterfly: UILabel!
    @IBOutlet weak var isLiked: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
