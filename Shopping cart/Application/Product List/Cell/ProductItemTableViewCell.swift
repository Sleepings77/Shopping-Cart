//
//  ProductItemTableViewCell.swift
//  Shopping cart
//
//  Created by InfinixSoft on 15/07/2021.
//

import UIKit
import Kingfisher

protocol ProductItemTableViewCellDelegate : ProductListViewController {
    func dismissToCart(in cell: ProductItemTableViewCell)
    func addToCart(in cell : ProductItemTableViewCell)
}

class ProductItemTableViewCell: UITableViewCell {

    @IBOutlet weak var productNameLabel  : UILabel!
    @IBOutlet weak var productPriceLabel : UILabel!
    @IBOutlet weak var productCountLabel : UILabel!
    @IBOutlet weak var addButton         : UIButton!
    @IBOutlet weak var dismissButton     : UIButton!
    @IBOutlet weak var productImageView  : UIImageView!
    
    weak var delegate : ProductItemTableViewCellDelegate?
    
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
    
    @IBAction func addButtonPressed(_ sender: UIButton){
        
    }
    
    @IBAction func dismissButtonPressed(_ sender: UIButton){
        
    }
    
}
