//
//  ViewController.swift
//  ExercicioTextField
//
//  Created by Bruno Moura on 23/03/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.placeholder = "Digite seu nome"
        addressTextField.placeholder = "Digite seu endereço"
        passwordTextField.placeholder = "Digite uma senha"
        nameTextField.delegate = self
        addressTextField.delegate = self
        passwordTextField.delegate = self
        nameTextField.layer.borderColor = UIColor.lightGray.cgColor
        nameTextField.layer.borderWidth = 2
        addressTextField.layer.borderColor = UIColor.lightGray.cgColor
        addressTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextField.layer.borderWidth = 2
        registerButton.isEnabled = false
    }

    @IBAction func tappedRegisterButton(_ sender: Any) {
        print("Cadastro realizado com sucesso")
    }
    
}

extension ViewController: UITextFieldDelegate{
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 2
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.lightGray.cgColor
        if textField.hasText == false{
            textField.layer.borderColor = UIColor.red.cgColor
            registerButton.isEnabled = false
        } else if nameTextField.hasText == true && addressTextField.hasText == true && passwordTextField.hasText == true {
            registerButton.isEnabled = true
        } else {
            textField.layer.borderColor = UIColor.lightGray.cgColor
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            addressTextField.becomeFirstResponder()
        } else if textField == addressTextField{
            passwordTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
}
