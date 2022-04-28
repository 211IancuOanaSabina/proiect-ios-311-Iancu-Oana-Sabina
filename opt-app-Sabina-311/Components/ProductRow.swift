//
//  ProductRow.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/22/22.
//

import SwiftUI

struct ProductRow: View {
    
//    @EnvironmentObject var cartManager: CartManager
//    var product: Product
    
    var body: some View {
        HStack(spacing: 20){
//            Image(product.image)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 50)
//                .cornerRadius(10)
//
//            VStack(alignment: .leading, spacing: 10){
//                Text(product.name)
//                    .bold()
//
//                Text("$\(product.price)")
//                    .bold()
//            }
//            Spacer()
//
//            Image(systemName: "trash")
//                .foregroundColor(.red)
//                .onTapGesture {
//                    cartManager.removeFromCart(product: product)
//                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow()
//            .environmentObject(CartManager())
    }
}
