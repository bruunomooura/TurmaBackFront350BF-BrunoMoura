//
//  Tela02ViewController.swift
//  NotificationCenterEProtocol
//
//  Created by Bruno Moura on 04/05/23.
//

import UIKit

protocol SelectionViewControllerProtocol: AnyObject {
    func tappedMacbook()
    func tappedIMac()
}

class SelectionViewController: UIViewController {
    
    
    @IBOutlet weak var optionsLabel: UILabel!
    @IBOutlet weak var macBookButton: UIButton!
    @IBOutlet weak var iMacButton: UIButton!
    
    weak var delegate: SelectionViewControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedMacBookButton(_ sender: UIButton) {
//        NotificationCenter.default.post(name: .macbook, object: UIColor.red)
        delegate?.tappedMacbook()
        dismiss(animated: true)
    }
    
    @IBAction func tappedIMacButton(_ sender: UIButton) {
//        NotificationCenter.default.post(name: .imac, object: nil)
        delegate?.tappedIMac()
        dismiss(animated: true)
    }
}
