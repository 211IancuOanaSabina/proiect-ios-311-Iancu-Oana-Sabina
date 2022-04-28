//
//  TabBarView.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/25/22.
//

import SwiftUI

struct TabBarView: View {
    @State var logged: Bool
    var body: some View {
        TabView {
            
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            
            NewProductView()
                .tabItem {
                    Label("Your Special Order", systemImage: "plus")
                }
            SettingsView1()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
            if logged {
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
            }
            else if logged == false{
                LoginView()
                    .tabItem {
                        Label("Login", systemImage: "person")
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(logged: false)
            .environmentObject(ProductsViewModel())
    }
}
