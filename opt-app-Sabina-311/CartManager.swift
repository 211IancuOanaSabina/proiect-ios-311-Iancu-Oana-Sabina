//
//  CartManager.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/22/22.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product){
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product){
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
}
