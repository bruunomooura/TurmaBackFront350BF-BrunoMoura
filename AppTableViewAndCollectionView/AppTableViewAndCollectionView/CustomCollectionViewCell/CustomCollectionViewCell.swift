//
//  CustomCollectionViewCell.swift
//  AppTableViewAndCollectionView
//
//  Created by Bruno Moura on 17/04/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier: String = "CustomCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        carImageView.contentMode = .scaleAspectFit
    }

    func setupeCell(nameImagem: String) {
        carImageView.image = UIImage(named: nameImagem)
    }
}
