//
//  LoginView.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/25/22.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    @State var logged = false
    
    var body: some View {
        VStack{
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
            Button(action: { login() }){
                Text("Sign in")
            }
        }
        .padding()
    }
    
    func login() {
        logged = false
        Auth.auth().signIn(withEmail: email, password: password) {
            (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else {
                print("succes")
                logged = true
                email = email
                password = password
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
