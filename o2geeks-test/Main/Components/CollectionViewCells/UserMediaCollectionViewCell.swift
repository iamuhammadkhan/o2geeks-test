//
//  UserMediaCollectionViewCell.swift
//  o2geeks-test
//
//  Created by Muhammad Khan on 3/8/22.
//

import UIKit

final class UserMediaCollectionViewCell: UICollectionViewCell {

    @IBOutlet private weak var mediaImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }
    
    private func setupViews() {
        mediaImageView.applyCornerRadius(4)
    }
}
