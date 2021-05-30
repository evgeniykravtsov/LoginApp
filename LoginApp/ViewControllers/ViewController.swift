//
//  ViewController.swift
//  LoginApp
//
//  Created by Kravtsov Evgeniy on 26.05.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNametextField: UITextField!
    
    @IBOutlet weak var passwordNameTextField: UITextField!

    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        userNametextField.text = ""
        passwordNameTextField.text = ""
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        print (tabBarController)
        for viewController in tabBarController.viewControllers ?? [] {
          if let welcomeVC = viewController as? LogOutViewCOntroller {
            welcomeVC.user = userNametextField.text ?? ""
          } else if let navigationVC = viewController as? UINavigationController {
            if let aboutUserVC = navigationVC.topViewController as? InfoViewController {
                aboutUserVC.title = " info \(userNametextField.text ?? "")"

            }
          }
        }
    }
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {
        
    }
    
    @IBAction func clickLoginHandler(_ sender: Any) {
        if userNametextField.text != "username" || passwordNameTextField.text != "password" {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordNameTextField
            )
            return
        }
    }
    
}

extension ViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
