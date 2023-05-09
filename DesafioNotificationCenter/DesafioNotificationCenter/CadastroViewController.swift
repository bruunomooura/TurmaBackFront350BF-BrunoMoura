//
//  CadastroViewController.swift
//  DesafioNotificationCenter
//
//  Created by Bruno Moura on 08/05/23.
//

import UIKit

class CadastroViewController: UIViewController {
    
    
    @IBOutlet weak var registerLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    
    var alert: AlertController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert = AlertController(controller: self)
        configCadastroView()
    }
    
    func configCadastroView() {
        view.backgroundColor = .orange
        registerLabel.text = "Cadastro"
        registerLabel.font = UIFont.systemFont(ofSize: 40.0, weight: .bold)
        
        nameTextField.placeholder = "Insira um nome"
    }
    
    @IBAction func tappedAddButton(_ sender: UIButton) {
        if nameTextField.hasText == false {
            self.alert?.alertInformation(title: "Atenção", message: "É necessário inserir um nome para poder continuar!")
        } else {
            NotificationCenter.default.post(name: .name, object: nameTextField.text)
            tabBarController?.selectedIndex = 0
            nameTextField.text = ""
        }
    }
}
