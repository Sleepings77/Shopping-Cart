//
//  Cart.swift
//  Shopping cart
//
//  Created by InfinixSoft on 15/07/2021.
//

import Foundation
import UIKit

final class  Cart {
    static let shared = Cart()
    var items: [CartItem] = []
    
    private init() { }
    
    func addProduct(_ product: Product){
        let index = items.firstIndex { (item) -> Bool in
            item.product.id  == product.id
        }
    }
    
    
    func removeProduct(_ product: Product){
        
    }
    
}
