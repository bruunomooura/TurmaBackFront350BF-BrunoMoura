//
//  CustomTableViewCell.swift
//  AppTableViewAndCollectionView
//
//  Created by Bruno Moura on 17/04/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell{
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier: String = String(describing: CustomTableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    var list: [String] = []
  
    
    let fontTitleLabel = UILabel()
    let fonte = UIFont.systemFont(ofSize: 30)
    let fonteNegrito = UIFont.boldSystemFont(ofSize: 40)
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configCollectionView()
        
        
        
    }
    func configCollectionView() {
    collectionView.delegate = self
    collectionView.dataSource = self
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
        self.collectionView.register(CustomCollectionViewCell.nib(), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        collectionView.contentMode = .scaleAspectFit
        let atributos: [NSAttributedString.Key: Any] = [.font: fonteNegrito]
        nameLabel.font = fonte
        nameLabel.attributedText = NSAttributedString(string: nameLabel.text ?? "", attributes: atributos)
    }
    func setupCell(vehicle: Vehicle) {
        nameLabel.text = vehicle.name
        list = vehicle.list
    }
}
    
extension CustomTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
       
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
        }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell
        cell?.setupeCell(nameImage: list[indexPath.row])
            return cell ?? UICollectionViewCell()
        }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width)/1.5, height: 250)
        }
    }
