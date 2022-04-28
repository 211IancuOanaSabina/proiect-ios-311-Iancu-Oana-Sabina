//
//  NewProductView.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/26/22.
//

import SwiftUI

struct NewProductView: View {
    @State private var showAddProduct = false
    var body: some View {
        NavigationView {
            Button("Add your product manually"){
                showAddProduct = true
            }
        .navigationTitle("New product")
                
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddProduct) {
            NewRecipeView()
        }
    }
}

struct NewProductView_Previews: PreviewProvider {
    static var previews: some View {
        NewProductView()
    }
}
