//
//  Product.swift
//  Shopping cart
//
//  Created by InfinixSoft on 15/07/2021.
//

import Foundation
import UIKit

struct Product {
    let name        : String
    let price       : Double
    let image       : String
    
    var formattedPrice : String {
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        // localize to your grouping and decimal separator
        currencyFormatter.locale = Locale.current
        // We'll force unwrap with the !, if you've got defined data you may need more error checking
        let priceString = currencyFormatter.string(from: NSNumber(value: price))!
        return priceString
    }
}
