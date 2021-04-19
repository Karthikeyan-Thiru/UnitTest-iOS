//
//  ViewController.swift
//  Test-Demo
//
//  Created by Karthikeyan T on 21/02/2021.
//  Copyright © 2021 Karthikeyan T. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {
    
    @IBOutlet weak var firsName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var repeatedPassword: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    var signupVM : SignupVM!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    static func getVC(with signupVM: SignupVM) -> SignupViewController {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "SignupViewController") as! SignupViewController
        vc.signupVM = signupVM
        return vc
    }
    
    @IBAction func signupAction(_ sender: UIButton) {
        if signupVM.isValidEntries {
            WebServiceHandler.sharedInstance.signup()
        } else {
            
        }
    }
}

