//
//  UserMediaTableViewCell.swift
//  o2geeks-test
//
//  Created by Muhammad Khan on 3/8/22.
//

import UIKit

final class UserMediaTableViewCell: UITableViewCell {

    @IBOutlet private weak var sectionTitleLabel: UILabel!
    @IBOutlet private weak var mediaCountLabel: UILabel!
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
        collectionView.register(UINib(nibName: UserMediaCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: UserMediaCollectionViewCell.identifier)
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    }
    
}

extension UserMediaTableViewCell: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UserMediaCollectionViewCell = collectionView.dequeReusableCell(for: indexPath)
        return cell
    }
}

extension UserMediaTableViewCell: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 88, height: 88)
    }
}
