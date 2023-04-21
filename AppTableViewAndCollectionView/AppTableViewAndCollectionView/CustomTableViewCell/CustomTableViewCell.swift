//
//  CustomTableViewCell.swift
//  AppTableViewAndCollectionView
//
//  Created by Bruno Moura on 17/04/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell{
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    var listBrandCar: [String] = ["Audi", "Fiat", "Porsche", "Tesla", "Jeep", "Toyota", "Volkswagen"]
    
    let fontTitleLabel = UILabel()
    let fonte = UIFont.systemFont(ofSize: 30)
    let fonteNegrito = UIFont.boldSystemFont(ofSize: 40)
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configCollectionView()
        let atributos: [NSAttributedString.Key: Any] = [.font: fonteNegrito]
        titleLabel.font = fonte
        titleLabel.attributedText = NSAttributedString(string: titleLabel.text ?? "", attributes: atributos)
        
        
    }
    func configCollectionView() {
    collectionView.delegate = self
    collectionView.dataSource = self
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
        collectionView.register(CustomCollectionViewCell.nib(), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        collectionView.contentMode = .scaleAspectFit
    }
}
    
extension CustomTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
       
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listBrandCar.count
        }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell
        cell?.setupeCell(nameImagem: listBrandCar[indexPath.row])
            return cell ?? UICollectionViewCell()
        }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (contentView.frame.width)/1.5, height: 250)
        }
    }
