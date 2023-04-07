//
//  ViewController.swift
//  PrimeiroAppTableView
//
//  Created by Bruno Moura on 06/04/23.
//

import UIKit

// MARK: PASSO A PASSO TABLEVIEW COM XIB
// Criar a TableView e fazer a sua ligação
// Configurar TableView (delegate e dataSource)

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
       
    }
    func configTableView(){
        // configurar os protocolos
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        // registrar a celula
    }

}

// DATASOURCE -> RESPONSAVEL PELA PARTE DOS DADOS
extension ViewController: UITableViewDataSource {
    // Quantidade de itens por SEÇÃO
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}

// DELEGATE -> RESPONSAVEL PELA INTERAÇÃO DO USUÁRIO
extension ViewController: UITableViewDelegate {
    
}
