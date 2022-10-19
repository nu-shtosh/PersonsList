//
//  PersonInfoViewController.swift
//  PersonsList
//
//  Created by Илья Дубенский on 18.10.2022.
//

import UIKit

class PersonInfoViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!

    // MARK: - Properties
    var person: Person!

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        emailLabel.text = person.email
        phoneNumberLabel.text = person.phoneNumber
    }
}
