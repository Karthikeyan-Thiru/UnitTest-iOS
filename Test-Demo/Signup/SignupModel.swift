//
//  SignupModel.swift
//  Test-Demo
//
//  Created by Karthikeyan T on 23/02/2021.
//  Copyright © 2021 Karthikeyan T. All rights reserved.
//

import Foundation

struct SignupModel {
    var firstName = ""
    var lastName = ""
    var email = ""
    var password = ""
    var repeatedPassword = ""
    init(firstName: String, lastName: String, email: String, password: String, repeatedPassword: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.repeatedPassword = repeatedPassword
    }
    var isValidFirstName: Bool {
        if firstName.count < characterRange.firstNameMinLength ||
            firstName.count > characterRange.firstNameMaxLength {
            return false
        }
        return true
    }
    var isValidLastName: Bool {
        if lastName.count < characterRange.lastNameMinLength ||
            lastName.count > characterRange.lastNameMaxLength {
            return false
        }
        return true
    }
    var isIdenticalPassword: Bool {
        return password == repeatedPassword
    }
    var isValidPassword: Bool {
        guard isIdenticalPassword else {return false}
        let regex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{8,}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: password)
    }
    var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return predicate.evaluate(with: email)
    }
    var fullName: String? {
        return "\(firstName) \(lastName)"
    }
}






