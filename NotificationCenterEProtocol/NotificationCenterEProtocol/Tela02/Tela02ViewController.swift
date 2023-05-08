//
//  Tela02ViewController.swift
//  NotificationCenterEProtocol
//
//  Created by Bruno Moura on 04/05/23.
//

import UIKit

class Tela02ViewController: UIViewController {
    
    
    @IBOutlet weak var optionsLabel: UILabel!
    
    @IBOutlet weak var macBookButton: UIButton!
    
    @IBOutlet weak var iMacButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedMacBookButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: .macbook, object: UIColor.red)
        dismiss(animated: true)
    }
    
    @IBAction func tappedIMacButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: .imac, object: nil)
        dismiss(animated: true)
    }
}
