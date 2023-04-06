//
//  Tela05ViewController.swift
//  ExercicioTransicaoTelas
//
//  Created by Bruno Moura on 06/04/23.
//

import UIKit

class Tela05ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedGoScreen6Button(_ sender: UIButton) {
        let vc: Tela06ViewController? = UIStoryboard(name: "Tela06ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela06ViewController") as? Tela06ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    

    @IBAction func tappedBackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
