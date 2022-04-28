//
//  ProductView.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/26/22.
//

import SwiftUI

struct ProductView: View {
    var product : Product
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: product.image)) { image in
                image
                    .resizable()
                    .scaledToFit()

                    .frame( maxWidth: .infinity,  maxHeight: .infinity )
                   .aspectRatio(contentMode: .fill)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .frame( maxWidth: .infinity,  maxHeight: .infinity )
                    .foregroundColor(.white.opacity(0.8))
                    .frame( maxWidth:  .infinity,  maxHeight: .infinity)
            }
            
            .frame( height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.yellow).opacity(0.3)]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: Color.orange.opacity(0.7), radius: 15, x: 0, y: 10)
            
            VStack(spacing: 30){
                Text(product.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack (alignment: .leading, spacing: 30) {
                    if !product.description.isEmpty{
                        Text(product.description)
                    }
                    
                }
            }

            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: Product.all[0])
    }
}
