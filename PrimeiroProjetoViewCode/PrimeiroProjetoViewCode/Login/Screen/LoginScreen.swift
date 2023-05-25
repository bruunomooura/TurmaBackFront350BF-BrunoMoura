//
//  LoginScreen.swift
//  PrimeiroProjetoViewCode
//
//  Created by Bruno Moura on 16/05/23.
//

import UIKit
import SnapKit
// Como criar/configurar class em ViewCode
// 1 passo - Criar Screen (Ex: LoginViewController -> LoginScreen, RegisterViewController -> RegisterScreen)
// 2 passo - Metodo construtor
// 3 passo - Criar elemento (NÃO SE ESQUEÇA DO translatesAutoresizingMaskIntoConstraints)
// 4 passo - adicionar elemento
// 5 passo - configurar constraints
// 6 passo - verificar se o addElements e o configConstraints estão sendo chamados no construtor
// 7 passo - chamar view na loadView
// 8 passo - Correr para o abraço!!!

class LoginScreen: UIView {

    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Digite seu e-mail:"
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        return tf
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Digite sua senha:"
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.isSecureTextEntry = true
        return tf
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar no App", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(tappedLogin), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedLogin(_ sender: UIButton) {
        print(#function)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        addElements()
        configLoginLabelConstraints()
        configEmailTextFieldConstraints()
        configPasswordTextFieldConstraints()
        configLoginButtonTextFieldConstraints()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(loginLabel)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
    }
    
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
//            loginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
//            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
//            emailTextField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 20),
//            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
//            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
//            emailTextField.heightAnchor.constraint(equalToConstant: 45),
           
//            Abordagem sem referencia
            
//            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
//            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
//            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
//            passwordTextField.heightAnchor.constraint(equalToConstant: 45),
            
//            Abordagem com referencia
            
//            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
//            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
//            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
//            passwordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
//
//            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
//            loginButton.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
//            loginButton.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
//            loginButton.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
        
        ])
    }
    
    
    // inset = negativo
    // offset = positivo

    func configLoginLabelConstraints() {
        loginLabel.snp.makeConstraints { loginLabel in
            loginLabel.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            loginLabel.centerX.equalToSuperview()
        }
    }

    func configEmailTextFieldConstraints() {
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.leading.equalToSuperview().offset(20)
            make.height.equalTo(45)
        }
    }
    
    func configPasswordTextFieldConstraints() {
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(20)
            make.trailing.equalTo(emailTextField.snp.trailing)
            make.leading.equalTo(emailTextField.snp.leading)
            make.height.equalTo(emailTextField.snp.height)
        }
    }
    
    func configLoginButtonTextFieldConstraints() {
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(20)
            make.trailing.equalTo(emailTextField.snp.trailing)
            make.leading.equalTo(emailTextField.snp.leading)
            make.height.equalTo(emailTextField.snp.height)
        }
    }
    
}
