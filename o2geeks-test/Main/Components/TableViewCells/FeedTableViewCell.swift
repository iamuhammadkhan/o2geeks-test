//
//  FeedTableViewCell.swift
//  o2geeks-test
//
//  Created by Muhammad Khan on 3/8/22.
//

import UIKit

final class FeedTableViewCell: UITableViewCell {

    @IBOutlet private weak var seperatorLine: UIView!
    @IBOutlet private weak var topSeperatorLine: UIView!
    @IBOutlet private weak var mainStackView: UIStackView!
    @IBOutlet private weak var commentContainerView: UIView!
    @IBOutlet private weak var userimageView: UIImageView!
    @IBOutlet private weak var userNameLabel: UILabel!
    @IBOutlet private weak var userSchoolLabel: UILabel!
    @IBOutlet private weak var postTimeLabel: UILabel!
    @IBOutlet private weak var postImageView: UIImageView!
    @IBOutlet private weak var editPostButton: UIButton!
    @IBOutlet private weak var likeIcon: UIImageView!
    @IBOutlet private weak var likesCountLabel: UILabel!
    @IBOutlet private weak var commentIcon: UIImageView!
    @IBOutlet private weak var commentsCountLabel: UILabel!
    @IBOutlet private weak var shareIcon: UIImageView!
    @IBOutlet private weak var postTextLabel: UILabel!
    @IBOutlet private weak var userImageWriteComment: UIImageView!
    @IBOutlet private weak var writeCommentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }

    private func setupViews() {
        seperatorLine.backgroundColor = AppConstants.Colors.appLightGrey
        topSeperatorLine.backgroundColor = AppConstants.Colors.appLightGrey
        commentContainerView.backgroundColor = AppConstants.Colors.appLightGrey
        commentContainerView.applyCornerRadius(8)
        userImageWriteComment.makeCircularView()
        userimageView.makeCircularView()
        setupPostText()
    }
    
    private func setupPostText() {
        let text = "Hello! I was able to update #thephone iPhone 12 Pro Max from iOS 13.0 to 14.0 after I downloaded the public beta… read more"
        let hashString = convertTextToHashString(text)
        postTextLabel.attributedText = hashString
    }
    
    private func convertTextToHashString(_ string: String) -> NSAttributedString {
        let hasAttribute = [NSAttributedString.Key.foregroundColor: AppConstants.Colors.appGreen]
        let normalAttribute = [NSAttributedString.Key.foregroundColor: AppConstants.Colors.appBlack]
        let mainAttributedString = NSMutableAttributedString(string: string, attributes: normalAttribute)
        let txtViewReviewText = string as NSString
        string.findHashStringsText().forEach {
            if string.contains($0) {
                mainAttributedString.addAttributes(hasAttribute, range: txtViewReviewText.range(of: $0))
            }
        }
        return mainAttributedString
    }
}

extension String {
    func findHashStringsText() -> [String] {
        var hashStrings: [String] = []
        let regex = try? NSRegularExpression(pattern: "(#[a-zA-Z0-9_\\p{Arabic}\\p{N}]*)", options: [])
        if let matches = regex?.matches(in: self, options: [], range: NSMakeRange(0, self.count)) {
            for match in matches {
                hashStrings.append(NSString(string: self).substring(with: NSRange(location: match.range.location, length: match.range.length )))
            }
        }
        return hashStrings
    }
}
