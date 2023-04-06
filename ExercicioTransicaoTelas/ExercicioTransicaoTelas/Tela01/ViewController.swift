//
//  ViewController.swift
//  ExercicioTransicaoTelas
//
//  Created by Bruno Moura on 06/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tappedGoScreen2Button(_ sender: UIButton) {
        let vc: Tela02ViewController? = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        vc?.modalPresentationStyle = .fullScreen
        present(vc ?? UIViewController(), animated: true)
        
    }
}

