//
//  CustomCollectionViewCell.swift
//  AppTableViewAndCollectionView
//
//  Created by Bruno Moura on 17/04/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var vehicleImageView: UIImageView!
    
    static let identifier: String = String(describing: CustomCollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        congigElement()
        
    }

    func congigElement() {
        vehicleImageView.contentMode = .scaleAspectFit
    }
    
    func setupeCell(nameImage: String) {
        vehicleImageView.image = UIImage(named: nameImage)
    }
}
