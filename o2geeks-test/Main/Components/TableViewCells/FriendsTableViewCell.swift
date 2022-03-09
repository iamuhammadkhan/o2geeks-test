//
//  FriendsTableViewCell.swift
//  o2geeks-test
//
//  Created by Muhammad Khan on 3/8/22.
//

import UIKit

final class FriendsTableViewCell: UITableViewCell {

    @IBOutlet private weak var sectionTitleLabel: UILabel!
    @IBOutlet private weak var friendsCountLabel: UILabel!
    @IBOutlet private weak var forwardArrowIcon: UIImageView!
    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var seperatorLine: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }

    private func setupViews() {
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: FriendsCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: FriendsCollectionViewCell.identifier)
        collectionView.contentInset = UIEdgeInsets(top: 8, left: 12, bottom: 0, right: 12)
    }
}

extension FriendsTableViewCell: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: FriendsCollectionViewCell = collectionView.dequeReusableCell(for: indexPath)
        return cell
    }
}

extension FriendsTableViewCell: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 60, height: 68)
    }
}
