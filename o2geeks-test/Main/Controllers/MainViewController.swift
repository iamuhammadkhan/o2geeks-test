//
//  MainViewController.swift
//  o2geeks-test
//
//  Created by Muhammad Khan on 3/8/22.
//

import UIKit

final class MainViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        navigationItem.title = AppConstants.Strings.profilePageTitle
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: AppConstants.Images.threeDots), style: .plain, target: self, action: nil)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: AppConstants.Images.backArrow), style: .plain, target: self, action: nil)
    }
}

