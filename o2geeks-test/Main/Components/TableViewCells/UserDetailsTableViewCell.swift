//
//  UserDetailsTableViewCell.swift
//  o2geeks-test
//
//  Created by Muhammad Khan on 3/8/22.
//

import UIKit

final class UserDetailsTableViewCell: UITableViewCell {

    @IBOutlet private weak var userDetailsIcon: UIImageView!
    @IBOutlet private weak var userDetailsLabel: UILabel!
    @IBOutlet private weak var mainStackView: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
