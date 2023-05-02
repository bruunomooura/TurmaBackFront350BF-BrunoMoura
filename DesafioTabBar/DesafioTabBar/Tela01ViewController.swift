//
//  ViewController.swift
//  DesafioTabBar
//
//  Created by Bruno Moura on 25/04/23.
//

import UIKit

class Tela01ViewController: UIViewController {
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var editPictureButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addUserButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var data: [User] = []
    let imagePicker: UIImagePickerController = UIImagePickerController()
    var alert: AlertController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert = AlertController(controller: self)
        configImagePicker()
        configTela01View()
        configTableView()
        
    }
    func configImagePicker() {
        imagePicker.delegate = self
        imagePicker.allowsEditing = false
    }
    
    func configTela01View() {
        view.backgroundColor = .orange
        nameLabel.text = "Nome"
        userImageView.image = UIImage(systemName: "person.circle.fill")
        userImageView.tintColor = .black
        userImageView.clipsToBounds = true
        userImageView.layer.cornerRadius = userImageView.frame.height / 2
        userImageView.contentMode = .scaleAspectFill
        nameTextField.placeholder = "Digite seu nome"
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
    
    
    @IBAction func tappedEditPictureButton(_ sender: UIButton) {
        self.alert?.chooseImage(completion: { option in
            switch option {
            case .camera:
                if UIImagePickerController.isSourceTypeAvailable(.camera) {
                    self.imagePicker.sourceType = .photoLibrary
                }
                self.present(self.imagePicker, animated: true)
            case .library:
                self.imagePicker.sourceType = .photoLibrary
                self.present(self.imagePicker, animated: true)
            case .cancel:
                break
            }
        })
    }
    
    @IBAction func tappedAddUserButton(_ sender: Any) {
        if nameTextField.hasText == false {
            self.alert?.alertInformation(title: "Atenção", message: "Por favor, informe o nome!")
        } else {
            data.append(User(name: nameTextField.text ?? "", photo: userImageView.image ?? UIImage()))
            nameTextField.text = ""
            userImageView.image = UIImage(systemName: "person.circle.fill")
            tableView.reloadData()
        }
    }
}

extension Tela01ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.setupCell(user: data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
}


extension Tela01ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.userImageView.image = image
        }
        picker.dismiss(animated: true)
    }
}

