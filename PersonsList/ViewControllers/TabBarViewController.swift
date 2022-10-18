//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by Илья Дубенский on 18.10.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    private let persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        transferDataToControllers(persons: persons)
    }
    
    private func transferDataToControllers(persons: [Person]) {
        guard let personListVC = viewControllers?[0] as? PersonListViewController else { return }
        guard let personDetailList = viewControllers?[1] as? PersonDetailListViewController else { return }
        personListVC.persons = persons
        personDetailList.persons = persons
    }
}
