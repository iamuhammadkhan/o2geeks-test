//
//  FollowersTableViewCell.swift
//  o2geeks-test
//
//  Created by Muhammad Khan on 3/8/22.
//

import UIKit

final class FollowersTableViewCell: UITableViewCell {

    @IBOutlet private weak var mainStackView: UIStackView!
    @IBOutlet private weak var contentStackView: UIStackView!
    @IBOutlet private weak var followersImageView: UIImageView!
    @IBOutlet private weak var followersLabel: UILabel!
    @IBOutlet private weak var groupImageView: UIImageView!
    @IBOutlet private weak var groupLabel: UILabel!
    @IBOutlet private weak var eventImageView: UIImageView!
    @IBOutlet private weak var eventLabel: UILabel!
    @IBOutlet private weak var seperatorLine: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
