//
//  PersonDetailListViewController.swift
//  PersonsList
//
//  Created by Илья Дубенский on 18.10.2022.
//

import UIKit

class PersonDetailListViewController: UITableViewController {

    var persons: [Person] = []

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailPerson", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        switch indexPath.row {
        case 0:
            content.image = UIImage(systemName: "phone")
            content.text = person.phoneNumber
        default:
            content.image = UIImage(systemName: "mail")
            content.text = person.email
        }
        cell.contentConfiguration = content
        return cell
    }


}
