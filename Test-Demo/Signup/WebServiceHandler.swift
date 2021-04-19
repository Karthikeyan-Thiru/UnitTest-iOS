//
//  WebServiceHandler.swift
//  Test-Demo
//
//  Created by Karthikeyan T on 04/03/2021.
//  Copyright © 2021 Karthikeyan T. All rights reserved.
//

import Foundation

class WebServiceHandler {
    
    static let sharedInstance = WebServiceHandler()
    private init() {}
    
    var isLoading = false
    
    func signup() {
        isLoading = true
    }
}
