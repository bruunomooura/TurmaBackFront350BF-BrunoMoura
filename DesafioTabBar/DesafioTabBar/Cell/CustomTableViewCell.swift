//
//  TableViewCell.swift
//  DesafioTabBar
//
//  Created by Bruno Moura on 01/05/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = String(describing: CustomTableViewCell.self)
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        userImageView.image = UIImage(systemName: "person")
        userImageView.contentMode = .scaleAspectFit
        nameLabel.text = "Nome"
        selectionStyle = .none
}

    func setupCell(user: User) {    
        userImageView.image = user.photo
        nameLabel.text = user.name
    }
}
