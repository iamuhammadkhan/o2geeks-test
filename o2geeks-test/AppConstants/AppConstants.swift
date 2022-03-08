//
//  AppConstants.swift
//  o2geeks-test
//
//  Created by Muhammad Khan on 3/8/22.
//

import UIKit

struct AppConstants {
    struct Colors {
        /// #FFFFFF
        static let appWhite = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        /// #000000
        static let appBlack = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        /// #1BEF9E
        static let appGreen = UIColor(red: 0.1, green: 0.9, blue: 0.6, alpha: 1)
        /// #EDEDEE
        static let appContainerGrey = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1)
        /// #EAEDF3
        static let appLightGreyBorder = UIColor(red: 0.91, green: 0.92, blue: 0.95, alpha: 1)
        /// #BFC4CE
        static let appSepratorLine = UIColor(red: 0.74, green: 0.76, blue: 0.8, alpha: 1)
        /// #ECECEC
        static let appLightGrey = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1)
    }
    
    struct Images {
        static let userAvatar = "avatar"
        static let avatar1 = "avatar_1"
        static let avatar2 = "avatar_2"
        static let threeDots = "dots_icon"
        static let backArrow = "back_arrow_icon"
    }
    
    struct Strings {
        static let profilePageTitle = "My Profile"
    }
}
