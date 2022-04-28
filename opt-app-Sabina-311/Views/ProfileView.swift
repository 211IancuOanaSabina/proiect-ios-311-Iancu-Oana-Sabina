//
//  ProfileView.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/25/22.
//

import SwiftUI
import Firebase

struct ProfileView: View {
    
    @State var email: String = "test@test.com"
    @State var password: String = "nuavem"
    @State private (set) var name: String = "gigel"
    @State private (set) var phone: String = "1245895"
    @State private (set) var image: String = ""
    @State private var isLoading = false
    
    var body: some View {
        NavigationView {
            
            
            Form {
                ZStack(alignment: .center) {
                    AsyncImage(url: URL(string: "https://c4.wallpaperflare.com/wallpaper/842/787/674/anime-hat-anime-girls-tea-wallpaper-preview.jpg")) { image in
                        image
                            .resizable()
                            .scaledToFit()

                            .frame( maxWidth: .infinity,  maxHeight: .infinity )
                           .aspectRatio(contentMode: .fill)
                    } placeholder: {
                        Image(systemName: "person")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40, alignment: .center)
                            .frame( maxWidth: .infinity,  maxHeight: .infinity )
                            .foregroundColor(.white.opacity(0.8))
                            .frame( maxWidth:  .infinity,  maxHeight: .infinity)
                    }

                    .frame(width: 180, height: 217, alignment: .top)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(.yellow).opacity(1)]), startPoint: .top, endPoint: .bottom))
                    .clipShape(RoundedRectangle(cornerRadius: 100, style: .continuous))
                    .shadow(color: Color.orange.opacity(0.7), radius: 15, x: 0, y: 10)

                }
                
                                
                Section(header: Text("Picture")){
                    
                    HStack{
                        Image(systemName: "photo")
                        Text("\(image)")
                        }

                    }
                
                Section(header: Text("Name")){
                    HStack{
                        Image(systemName: "person")
                        Text("\(name)")
                        }
                        
                    }
                    
                
                Section(header: Text("Phone number")){
                    HStack{
                        Image(systemName: "phone")
                        Text("\(phone)")
                        
                    }
                }
                
                Section(header: Text("Email")){
                    HStack{
                        Image(systemName: "envelope")
                        Text("\(email)")
                        
                    }

                }
                Button {
                    print("Edit process starts")
                } label: {
                    Text("Update Profile")
                        .bold()
                        .frame(width: 20, height: 50)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
                .disabled(isLoading)

            }
            
            ScrollView {
                ZStack {
                    
                    AsyncImage(url: URL(string: "https://c4.wallpaperflare.com/wallpaper/842/787/674/anime-hat-anime-girls-tea-wallpaper-preview.jpg")) { image in
                        image
                            .resizable()
                            .scaledToFit()

                            .frame( maxWidth: .infinity,  maxHeight: .infinity )

                           .aspectRatio(contentMode: .fill)
                    } placeholder: {
                        Image(systemName: "person")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40, alignment: .center)
                            .frame( maxWidth: .infinity,  maxHeight: .infinity )
                            .foregroundColor(.white.opacity(0.8))
                            .frame( maxWidth:  .infinity,  maxHeight: .infinity)
                    }

                    .frame(width: 180, height: 217, alignment: .top)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(.yellow).opacity(1)]), startPoint: .top, endPoint: .bottom))
                    .clipShape(RoundedRectangle(cornerRadius: 100, style: .continuous))
                    .shadow(color: Color.orange.opacity(0.7), radius: 15, x: 0, y: 10)
                    
                    
                    
                    Text("")
                        .navigationTitle("Profile")
                    
                    }
            }
            
        }
        
        
        .onAppear{
            startNetworkCall()
        }
        .redacted(reason: isLoading ? .placeholder : [])
        
        
    }
    
    
    
    func startNetworkCall(){
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            isLoading = false
        }
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
