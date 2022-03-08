//
//  EditProfileTableViewCell.swift
//  o2geeks-test
//
//  Created by Muhammad Khan on 3/8/22.
//

import UIKit

final class EditProfileTableViewCell: UITableViewCell {

    @IBOutlet private weak var editButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        editButton.applyCornerRadius(12)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
