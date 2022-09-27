//
//  UpomingViewController.swift
//  NetflixClone
//
//  Created by Maksim Malofeev on 26/09/2022.
//

import UIKit

class UpcomingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Upcoming"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
    }
}
