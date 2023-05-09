//
//  DadosViewController.swift
//  DesafioNotificationCenter
//
//  Created by Bruno Moura on 08/05/23.
//

import UIKit

class DadosViewController: UIViewController {

    
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var data: [Cadastro] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configObserver()
        configDadosView()
        configTableView()
    }
    
    func configObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateName), name: .name, object: nil)
    }
    
    @objc func updateName(_ notification: NSNotification) {
        data.append(Cadastro(name: notification.object as? String ?? ""))
        tableView.reloadData()
        
        
    }
    
    func configDadosView() {
        view.backgroundColor = .green
        dataLabel.text = "Dados"
        dataLabel.font = UIFont.systemFont(ofSize: 40.0, weight: .bold)
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
}
extension DadosViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.setupCell(cadastro: data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
}
