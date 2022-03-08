//
//  MainViewController.swift
//  o2geeks-test
//
//  Created by Muhammad Khan on 3/8/22.
//

import UIKit

final class MainViewController: UIViewController {

    private lazy var sections = ProfileTableViewSections.allCases
    
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        setupNavigationBar()
        setupTableView()
    }
    
    private func setupNavigationBar() {
        navigationItem.title = AppConstants.Strings.profilePageTitle
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: AppConstants.Images.threeDots), style: .plain, target: self, action: nil)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: AppConstants.Images.backArrow), style: .plain, target: self, action: nil)
        navigationController?.navigationBar.tintColor = .black
    }
    
    private func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: UserNameImageTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: UserNameImageTableViewCell.identifier)
        tableView.register(UINib(nibName: EditProfileTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: EditProfileTableViewCell.identifier)
        tableView.register(UINib(nibName: FollowersTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: FollowersTableViewCell.identifier)
        tableView.register(UINib(nibName: UserDetailsTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: UserDetailsTableViewCell.identifier)
        tableView.register(UINib(nibName: FriendsTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: FriendsTableViewCell.identifier)
        tableView.register(UINib(nibName: UserMediaTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: UserMediaTableViewCell.identifier)
        tableView.register(UINib(nibName: CreatePostTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: CreatePostTableViewCell.identifier)
        tableView.register(UINib(nibName: FeedTypeSelectionTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: FeedTypeSelectionTableViewCell.identifier)
        tableView.register(UINib(nibName: FeedTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: FeedTableViewCell.identifier)
    }
}

extension MainViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = sections[indexPath.section]
        switch section {
        case .profileSection:
            let cell: UserNameImageTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        case .editProfileSection:
            let cell: EditProfileTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        case .followersSection:
            let cell: FollowersTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        case .userDetailsSection:
            let cell: UserDetailsTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        case .userFriendsSection:
            let cell: FriendsTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        case .userMediaSection:
            let cell: UserMediaTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        case .createPostSection:
            let cell: CreatePostTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        case .feedTypeSelectionSection:
            let cell: FeedTypeSelectionTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        case .userFeedsSection:
            let cell: FeedTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        }
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
