//
//  TabBarController.swift
//  PrimeiroProjetoTabBar
//
//  Created by Bruno Moura on 25/04/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configItems()
        configColors()
    }
    
    func configItems() {
        guard let items = tabBar.items else { return }
        items[0].title = "Tela 01"
        items[0].image = UIImage(systemName: "pencil.circle.fill")
        
        items[1].title = "Tela 02"
        items[1].image = UIImage(systemName: "rectangle.portrait.and.arrow.right.fill")
        
        items[2].title = "Tela 03"
        items[2].image = UIImage(systemName: "trash.slash.circle.fill")
        
    }
    
    func configColors() {
        tabBar.layer.borderWidth = 0.2
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }
    
}
