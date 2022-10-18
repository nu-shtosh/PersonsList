//
//  Person.swift
//  PersonsList
//
//  Created by Илья Дубенский on 18.10.2022.
//


struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String

    var fullName: String {
        "\(name) \(surname)"
    }

    static func getPersons() -> [Person] {
        var persons: [Person] = []

        let names = DataStore.data.names.shuffled()
        let surnames = DataStore.data.surnames.shuffled()
        let emails = DataStore.data.emails.shuffled()
        let phoneNumbers = DataStore.data.phoneNumbers.shuffled()

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
