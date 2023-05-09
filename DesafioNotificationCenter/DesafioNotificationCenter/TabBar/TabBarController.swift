//
//  ViewController.swift
//  DesafioNotificationCenter
//
//  Created by Bruno Moura on 08/05/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configItems()
        configColors()
       
    }
    func configItems(){
        guard let items = tabBar.items else {return}
        items[0].title = "Dados"
        items[0].image = UIImage(systemName: "info.circle")
        
        items[1].title = "Cadastro"
        items[1].image = UIImage(systemName: "pencil.circle.fill")
    }

    func configColors() {
        tabBar.layer.borderWidth = 0.2
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }
    
}

