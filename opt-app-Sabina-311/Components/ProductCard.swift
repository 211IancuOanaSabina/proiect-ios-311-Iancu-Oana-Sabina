//
//  ProductCard.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/22/22.
//

import SwiftUI

struct ProductCard: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    
    var product: Product
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom){
                
                AsyncImage(url: URL(string: product.image)) { image in
                    image
                        .resizable()
                        .scaledToFit()

                        .frame( maxWidth: .infinity,  maxHeight: .infinity )
//                        .cornerRadius(20)
//                        .frame(width: 180)
//                        .scaledToFit()
                       .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40, alignment: .center)
                        .frame( maxWidth: .infinity,  maxHeight: .infinity )
                        .foregroundColor(.white.opacity(0.8))
                        .frame( maxWidth:  .infinity,  maxHeight: .infinity)
                }
                

                .frame(width: 180, height: 217, alignment: .top)
                .background(LinearGradient(gradient: Gradient(colors: [Color(.yellow).opacity(0.3)]), startPoint: .top, endPoint: .bottom))
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .shadow(color: Color.orange.opacity(0.7), radius: 15, x: 0, y: 10)
                
//                Image(product.image)
//                    .resizable()
//                    .cornerRadius(20)
//                    .frame(width: 180)
//                    .scaledToFit()
                
                VStack(alignment: .leading){
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)$")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
        .shadow(radius: 3)
            
            Button{
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: Product.all[0])
            .environmentObject(CartManager())
    }
}
