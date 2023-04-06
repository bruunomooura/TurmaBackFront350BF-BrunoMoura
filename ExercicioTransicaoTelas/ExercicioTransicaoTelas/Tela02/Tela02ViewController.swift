//
//  Tela02ViewController.swift
//  ExercicioTransicaoTelas
//
//  Created by Bruno Moura on 06/04/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tappedGoScreen3Button(_ sender: UIButton) {
        let vc: Tela03ViewController? = UIStoryboard(name: "Tela03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController") as? Tela03ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
   
    @IBAction func tappedBack(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
