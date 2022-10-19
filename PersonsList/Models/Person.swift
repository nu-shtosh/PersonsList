//
//  Person.swift
//  PersonsList
//
//  Created by Илья Дубенский on 18.10.2022.
//

// MARK: - Person Class
struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String

    var fullName: String {
        "\(name) \(surname)"
    }
}

// MARK: - Static methods
extension Person {
    static func getPersons() -> [Person] {
        var persons: [Person] = []

        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phoneNumbers = DataStore.shared.phoneNumbers.shuffled()

        for index in 0..<names.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index]
            )
            persons.append(person)
        }

        return persons
    }
}
