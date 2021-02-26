//
//  ProCountApp.swift
//  ProCount WatchKit Extension
//
//  Created by Xiaochun Shen on 2021/2/26.
//

import SwiftUI

@main
struct ProCountApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
