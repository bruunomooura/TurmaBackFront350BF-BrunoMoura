//
//  ViewController.swift
//  NotificationCenterEProtocol
//
//  Created by Bruno Moura on 04/05/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var cliqueAquiButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        messageLabel.text = ""
//        configObserver()
        // Do any additional setup after loading the view.
    }
    
//    func configObserver() {
//        NotificationCenter.default.addObserver(self, selector: #selector(updateMacBook), name: .macbook, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(updateIMac), name: .imac, object: nil)
//    }
//
//    @objc func updateMacBook(_ notification: NSNotification) {
//        logoImageView.image = UIImage(named: "macbook2")
//        messageLabel.text = "MacBook Pro"
//        view.backgroundColor = notification.object as? UIColor
//    }
//
//    @objc func updateIMac(_ notification: NSNotification) {
//        logoImageView.image = UIImage(named: "imac2")
//        messageLabel.text = "iMac das galáxias"
//        view.backgroundColor = .cyan
//    }
    

    @IBAction func tappedCliqueAquiButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: String(describing: SelectionViewController.self), bundle: nil).instantiateViewController(withIdentifier: String(describing: SelectionViewController.self)) as? SelectionViewController
        vc?.modalPresentationStyle = .fullScreen
        vc?.delegate = self
        present(vc ?? UIViewController(), animated: true)
    }
    
}

extension HomeViewController: SelectionViewControllerProtocol {
    func tappedMacbook() {
            logoImageView.image = UIImage(named: "macbook2")
            messageLabel.text = "MacBook Pro"
        view.backgroundColor = .red
    }
    
    func tappedIMac() {
            logoImageView.image = UIImage(named: "imac2")
            messageLabel.text = "iMac das galáxias"
            view.backgroundColor = .cyan
    }
    
    
}
