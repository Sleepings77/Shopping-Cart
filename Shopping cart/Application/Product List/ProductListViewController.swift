//
//  ProductListViewController.swift
//  Shopping cart
//
//  Created by InfinixSoft on 15/07/2021.
//

import UIKit

class ProductListViewController: UIViewController {

    @IBOutlet weak var tableView : UITableView!
    var products : [Product]  = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        products.append(Product(name: "Oso", price: 20.00, image: "https://m.media-amazon.com/images/I/618OWpnT0QL._AC_SX425_.jpg",id: 20))
        products.append(Product(name: "Lapicera", price: 20.00, image: "https://m.media-amazon.com/images/I/618OWpnT0QL._AC_SX425_.jpg",id: 101))
        products.append(Product(name: "Hojas", price: 20.00, image: "https://m.media-amazon.com/images/I/618OWpnT0QL._AC_SX425_.jpg",id: 10))
        products.append(Product(name: "Manzana", price: 20.00, image: "https://m.media-amazon.com/images/I/618OWpnT0QL._AC_SX425_.jpg",id: 55))
        
        self.title = "Products"
        setupTableView()
        tableView.reloadData()
    }
}

extension ProductListViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProductItemTableViewCell.identifier, for: indexPath) as! ProductItemTableViewCell
        cell.configure(with: products[indexPath.row])
        cell.delegate = self
        return cell
    }
    
    func setupTableView(){
        
        tableView.register(ProductItemTableViewCell.nib, forCellReuseIdentifier: ProductItemTableViewCell.identifier)
        
        tableView.delegate  = self
        tableView.dataSource = self
        
    }
}

extension ProductListViewController: ProductItemTableViewCellDelegate {
    
    func dismissToCart(in cell: ProductItemTableViewCell) {
        guard let index = tableView.indexPath(for: cell)  else {
            return
        }
        let product = self.products[index.row]
        Cart.shared.removeProduct(product)
    }
    
    func addToCart(in cell: ProductItemTableViewCell) {
        guard let index = tableView.indexPath(for: cell)  else {
            return
        }
        
        let product = self.products[index.row]
        Cart.shared.addProduct(product)
    }
    
}
