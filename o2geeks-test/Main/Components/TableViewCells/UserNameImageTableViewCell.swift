//
//  UserNameImageTableViewCell.swift
//  o2geeks-test
//
//  Created by Muhammad Khan on 3/8/22.
//

import UIKit

final class UserNameImageTableViewCell: UITableViewCell {

    @IBOutlet private weak var userProfileImage: UIImageView!
    @IBOutlet private weak var userNameLabel: UILabel!
    @IBOutlet private weak var userSchoolLabel: UILabel!
    @IBOutlet private weak var mainStackView: UIStackView!
    @IBOutlet private weak var textStackView: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
