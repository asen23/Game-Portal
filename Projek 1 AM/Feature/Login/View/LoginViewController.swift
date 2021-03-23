//
//  LoginViewController.swift
//  Projek 1 AM
//
//  Created by IT-Mobile-Dev on 02/03/21.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dismissKeyboardWhenTouchedOutside()
        

        // Do any additional setup after loading the view.
    }
    @IBAction func btnLoginOnClick(_ sender: Any) {
    }
    
    @IBAction func btnRegisterOnClick(_ sender: Any) {
        let registerView = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
        self.navigationController?.pushViewController(registerView, animated: true)
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

extension UIViewController{
    @objc func dismissKeyboardWhenTouchedOutside(){
        let tap: UITapGestureRecognizer = UITapGestureRecognizer( target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
    }
    @objc private func dismissKeyboard(){
        self.view.endEditing(true)
    }
    
}
