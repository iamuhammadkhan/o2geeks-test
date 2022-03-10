//
//  FeedTypeSelectionTableViewCell.swift
//  o2geeks-test
//
//  Created by Muhammad Khan on 3/8/22.
//

import UIKit

final class FeedTypeSelectionTableViewCell: UITableViewCell {

    @IBOutlet private weak var seperatorLine: UIView!
    @IBOutlet private var postsButtons: [UIButton]!
    @IBOutlet private weak var mainStackView: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }

    private func setupViews() {
        seperatorLine.backgroundColor = AppConstants.Colors.appLightGrey
        updateButtonSelection(0)
    }
    
    private func updateButtonSelection(_ tag: Int) {
        for (index, button) in postsButtons.enumerated() {
            button.applyCornerRadius(8)
            index == tag ? setSelectedButtonSatate(button) : setUnSelectedButtonSatate(button)
        }
    }
    
    private func setSelectedButtonSatate(_ sender: UIButton) {
        sender.layer.borderWidth = 0
        sender.backgroundColor = AppConstants.Colors.appContainerGrey
    }
    
    private func setUnSelectedButtonSatate(_ sender: UIButton) {
        sender.applyBorder()
        sender.backgroundColor = .clear
    }
    
    @IBAction private func postButtonTapped(_ sender: UIButton) {
        updateButtonSelection(sender.tag)
    }
}
