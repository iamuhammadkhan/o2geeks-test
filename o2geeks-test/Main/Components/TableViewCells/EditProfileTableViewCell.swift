//
//  EditProfileTableViewCell.swift
//  o2geeks-test
//
//  Created by Muhammad Khan on 3/8/22.
//

import UIKit

final class EditProfileTableViewCell: UITableViewCell {

    lazy var callBack: (() -> Void)? = nil
    
    @IBOutlet private weak var editButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }

    private func setupViews() {
        editButton.applyCornerRadius(8)
        editButton.backgroundColor = AppConstants.Colors.appContainerGrey
        editButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc private func buttonTapped() {
        callBack?()
    }
}
