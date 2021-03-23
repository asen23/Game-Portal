//
//  RegisterViewController.swift
//  Projek 1 AM
//
//  Created by IT-Mobile-Dev on 02/03/21.
//

import UIKit

class RegisterViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtUserID: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dismissKeyboardWhenTouchedOutside()
        txtUserID.delegate = self
        txtPassword.delegate = self
        txtConfirmPassword.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch(textField){
        case txtUserID:
            txtPassword.becomeFirstResponder()
        case txtPassword:
            txtConfirmPassword.becomeFirstResponder()
        default:
            textField.resignFirstResponder()
        }
        return true
    }
    
    private func alert(_ message:String){
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "OK"), style: .default))
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func btnRegisterOnClick(_ sender: Any) {
        guard txtUserID.hasText else{
            alert("UserID cannot be empty")
            return
        }
        guard txtUserID.text!.count > 3 else {
            alert("UserID must be atleast 4 characters long")
            return
        }
        guard txtPassword.hasText else{
            alert("Password cannot be empty")
            return
        }
        guard txtPassword.text!.count > 7 else{
            alert("Password must to be atleast 8 characters long")
            return
        }
        guard txtPassword.text == txtConfirmPassword.text else{
            alert("Password did not match")
            return
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
