//
//  SignupVM.swift
//  Test-Demo
//
//  Created by Karthikeyan T on 23/02/2021.
//  Copyright © 2021 Karthikeyan T. All rights reserved.
//

import Foundation

class SignupVM {
    
    var signupModel: SignupModel!
    
    init(model: SignupModel) {
        self.signupModel = model
    }
    
    var isValidEntries: Bool {
        guard let model = signupModel else { return false}
        return model.isValidFirstName && model.isValidLastName && model.isValidEmail && model.isValidPassword
    }
        
    deinit {
        print("$$ SignupVM - deinit")
    }
}
