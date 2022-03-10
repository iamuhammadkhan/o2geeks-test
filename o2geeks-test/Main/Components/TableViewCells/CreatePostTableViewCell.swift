//
//  CreatePostTableViewCell.swift
//  o2geeks-test
//
//  Created by Muhammad Khan on 3/8/22.
//

import UIKit

final class CreatePostTableViewCell: UITableViewCell {

    @IBOutlet private weak var seperatorLine: UIView!
    @IBOutlet private weak var createPostButton: UIButton!
    @IBOutlet private weak var plusImageView: UIImageView!
    @IBOutlet private weak var galleryImageView: UIImageView!
    @IBOutlet private weak var mainStackView: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }

    private func setupViews() {
        seperatorLine.backgroundColor = AppConstants.Colors.appLightGrey
        createPostButton.backgroundColor = AppConstants.Colors.appContainerGrey
        createPostButton.setTitleColor(AppConstants.Colors.appGreen, for: .normal)
        createPostButton.applyCornerRadius(8)
    }
}
