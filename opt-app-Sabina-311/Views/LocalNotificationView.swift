//
//  LocalNotificationView.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/27/22.
//

import SwiftUI
import UserNotifications

struct LocalNotificationView: View {
    var body: some View {
        VStack{
            
            Button("Schedule Notification"){
                let content  = UNMutableNotificationContent()
                content.title = "Time to see our new products"
                content.subtitle = "We have a new stock of product, look and you'll see something good for you"
                content.sound = UNNotificationSound.default
                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                
                UNUserNotificationCenter.current().add(request)
            }
        }
    }
}

struct LocalNotificationView_Previews: PreviewProvider {
    static var previews: some View {
        LocalNotificationView()
    }
}
