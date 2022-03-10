//
//  UIView+Extension.swift
//  o2geeks-test
//
//  Created by Muhammad Khan on 3/8/22.
//

import UIKit

extension UIView {
    func applyBorder(_ width: CGFloat = 1, color: UIColor = AppConstants.Colors.appLightGrey) {
        layer.borderColor = color.cgColor
        layer.borderWidth = width
    }
    
    func makeCircularView() {
        layer.masksToBounds = true
        layer.cornerRadius = frame.height / 2
    }
    
    func applyCornerRadius(_ value: CGFloat) {
        layer.masksToBounds = true
        layer.cornerRadius = value
    }
}
