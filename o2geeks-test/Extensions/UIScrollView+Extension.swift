//
//  UIScrollView+Extension.swift
//  o2geeks-test
//
//  Created by Muhammad Khan on 3/8/22.
//

import UIKit

extension UIScrollView {
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        next?.touchesBegan(touches, with: event)
    }
}
