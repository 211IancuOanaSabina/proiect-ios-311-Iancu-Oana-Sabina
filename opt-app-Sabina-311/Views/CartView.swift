//
//  CartView.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/22/22.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
    
                ForEach(cartManager.products, id:\.id){
                    product in
                    ProductCard(product: product)
                }
                
                HStack {
                    Text("Your cart total is: ")
                    .bold()
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
            }
            else {
                Text("Your cart is empty")
            }
        }
        
        .navigationTitle("My Cart")
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
