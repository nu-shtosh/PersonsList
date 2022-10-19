//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by Илья Дубенский on 18.10.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    // MARK: - Properties
    private let persons = Person.getPersons()

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        transferDataToControllers(persons: persons)
    }

    // MARK: - Navigation
    private func transferDataToControllers(persons: [Person]) {
        guard let personListVC = viewControllers?.first as? PersonListViewController else { return }
        guard let personDetailListVC = viewControllers?.last as? PersonDetailListViewController else { return }
        personListVC.persons = persons
        personDetailListVC.persons = persons
    }
}
