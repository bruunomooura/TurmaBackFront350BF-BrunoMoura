//
//  PeopleTableViewCell.swift
//  AplicativoTableView
//
//  Created by Bruno Moura on 11/04/23.
//

import UIKit

class PeopleTableViewCell: UITableViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    static let identifier: String = "PeopleTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setupCell(person: Person) {
        nameLabel.text = person.name
        userImageView.image = UIImage(named: person.userImage)
        userImageView.contentMode = .scaleAspectFill
        userImageView.clipsToBounds = true


    }
    
}
