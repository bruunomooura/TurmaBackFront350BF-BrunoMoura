//
//  CustomTableViewCell.swift
//  DesafioNotificationCenter
//
//  Created by Bruno Moura on 08/05/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = String(describing: CustomTableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        nameLabel.font = UIFont.systemFont(ofSize: 25.0, weight: .semibold)
    }

    func setupCell(cadastro: Cadastro) {
        nameLabel.text = cadastro.Name
    }
    
}


