//
//  ProductItemTableViewCell.swift
//  Shopping cart
//
//  Created by InfinixSoft on 15/07/2021.
//

import UIKit
import Kingfisher

class ProductItemTableViewCell: UITableViewCell {

    @IBOutlet weak var productNameLabel  : UILabel!
    @IBOutlet weak var productPriceLabel : UILabel!
    @IBOutlet weak var productImageView  : UIImageView!
    
    static let identifier = "ProductItemTableViewCell"
    static let nib = UINib(nibName: "ProductItemTableViewCell", bundle: nil)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    func configure(with product: Product) {
        self.productNameLabel.text  = product.name
        self.productPriceLabel.text = product.formattedPrice
        self.productImageView.kf.setImage(with: URL(string: product.image))
    }
    
    
}
