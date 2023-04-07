//
//  NameTableViewCell.swift
//  PrimeiroAppTableView
//
//  Created by Bruno Moura on 06/04/23.
//

import UIKit

class NameTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UIView!
    
    
    // Ciclo de vida de uma célula. Igual ao viewDidload
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
