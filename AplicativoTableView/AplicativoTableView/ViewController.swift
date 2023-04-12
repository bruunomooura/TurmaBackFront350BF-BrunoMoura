//
//  ViewController.swift
//  AplicativoTableView
//
//  Created by Bruno Moura on 11/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var peopleTableView: UITableView!
    
    var userList: [Person] = [Person(name: "Bruno", userImage: "1"),
                              Person(name: "Ravi", userImage: "2"),
                              Person(name: "Luisa", userImage: "3"),
                              Person(name: "Antonio", userImage: "4"),
                              Person(name: "Gustavo", userImage: "5"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configPeopleTableView()
    
    }
    func configPeopleTableView() {
        peopleTableView.delegate = self
        peopleTableView.dataSource = self
        peopleTableView.register(PeopleTableViewCell.nib(), forCellReuseIdentifier: PeopleTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PeopleTableViewCell.identifier, for: indexPath) as? PeopleTableViewCell
        cell?.setupCell(person: userList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 130
    }
    
}

extension ViewController: UITableViewDelegate{
    
}
