//
//  MovieCell.swift
//  MovieViewer
//
//  Created by Eileen Madrigal on 1/25/16.
//  Copyright © 2016 Eileen Madrigal. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

  
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var PosterView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
