//
//  SignUpVC.swift
//  HarryPotter
//
//  Created by Josh on 5/4/23.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class SignUpVC: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let db = Firestore.firestore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    private func addUser(newUser user: User) {
        db.collection("users").document(user.uid).setData([
            "username": user.username,
            "email": user.email
        ]) { err in
            if let err = err {
                debugPrint("Error adding user: \(err)")
            } else {
                debugPrint("User added with ID: \(user.uid)")
            }
        }
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        
        guard let email = emailTextField.text, email.isNotEmpty,
              let username = usernameTextField.text , username.isNotEmpty,
              let password = passwordTextField.text, password.isNotEmpty else { return }
        
        let user = User(uid: UUID().uuidString, username: username, email: email)
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
            
            if let error = error {
                debugPrint(error)
                return
                
            } else {
                self.addUser(newUser: user)
                self.performSegue(withIdentifier: SIGNUP_TO_MAIN, sender: nil)
                
            }
        } // end Auth closure
    } // end IBAction
    
} // end VC
