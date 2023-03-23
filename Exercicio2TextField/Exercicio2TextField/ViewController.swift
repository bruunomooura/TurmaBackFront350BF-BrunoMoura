//
//  ViewController.swift
//  Exercicio2TextField
//
//  Created by Bruno Moura on 23/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.placeholder = "Digite seu nome"
        addressTextField.placeholder = "Digite seu endereço"
        passwordTextField.placeholder = "Digite uma senha"
        confirmPasswordTextField.placeholder = "Digite a senha novamente"
        nameTextField.delegate = self
        addressTextField.delegate = self
        passwordTextField.delegate = self
        confirmPasswordTextField.delegate = self
        nameTextField.layer.borderColor = UIColor.lightGray.cgColor
        nameTextField.layer.borderWidth = 2
        addressTextField.layer.borderColor = UIColor.lightGray.cgColor
        addressTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextField.layer.borderWidth = 2
        confirmPasswordTextField.layer.borderColor = UIColor.lightGray.cgColor
        confirmPasswordTextField.layer.borderWidth = 2
        registerButton.isEnabled = false
    }


    @IBAction func tappedRegisterButton(_ sender: Any) {
        print("Cadastro realizado com sucesso")    }
}

extension ViewController: UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 2
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.hasText == false{
            textField.layer.borderColor = UIColor.red.cgColor
            textField.layer.borderWidth = 2
            registerButton.isEnabled = false
        } else if nameTextField.hasText == true && addressTextField.hasText == true && passwordTextField.hasText == true && confirmPasswordTextField.hasText == true && passwordTextField.text == confirmPasswordTextField.text{
            registerButton.isEnabled = true
            passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
            passwordTextField.layer.borderWidth = 2
            confirmPasswordTextField.layer.borderColor = UIColor.lightGray.cgColor
            confirmPasswordTextField.layer.borderWidth = 2
        } else {
            textField.layer.borderWidth = 0
            registerButton.isEnabled = false
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.layer.borderWidth = 2
            confirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
            confirmPasswordTextField.layer.borderWidth = 2
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            addressTextField.becomeFirstResponder()
        } else if textField == addressTextField{
            passwordTextField.becomeFirstResponder()
        } else if textField == passwordTextField{
            confirmPasswordTextField.becomeFirstResponder()
            
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
    }

