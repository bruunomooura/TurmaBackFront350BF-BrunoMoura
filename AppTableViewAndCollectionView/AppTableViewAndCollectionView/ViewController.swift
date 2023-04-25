//
//  ViewController.swift
//  AppTableViewAndCollectionView
//
//  Created by Bruno Moura on 17/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var vehicleList: [Vehicle] = [Vehicle(name: "Carro", list: [ "Car1", "Car2", "Car3", "Car4", "Car5", "Car6", "Car7"]),
                                  Vehicle(name: "Avião", list: ["Aviao1", "Aviao2", "Aviao3", "Aviao4"]),
                                  Vehicle(name: "Moto", list: [ "Moto1", "Moto2", "Moto3", "Moto4", "Moto5"]),
                                  Vehicle(name: "Trem", list: [ "Trem1", "Trem2", "Trem3", "Trem4"]),
                                  Vehicle(name: "Trator", list: [ "Trator1", "Trator2", "Trator3", "Trator4"])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        
    }

    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }

}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vehicleList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.setupCell(vehicle: vehicleList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 358
    }
}
