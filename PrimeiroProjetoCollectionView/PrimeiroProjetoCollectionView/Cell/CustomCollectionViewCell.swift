//
//  CustomCollectionViewCell.swift
//  PrimeiroProjetoCollectionView
//
//  Created by Bruno Moura on 20/04/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier: String = String(describing: CustomCollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        carImageView.contentMode = .scaleAspectFit
    }

    func setupCell(nameImage: String) {
        carImageView.image = UIImage(named: nameImage)
    }
}
