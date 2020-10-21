//
//  TrackAndTraceApp.swift
//  TrackAndTrace
//
//  Created by Justin Lange on 15/10/2020.
//

import SwiftUI

@main
struct TrackAndTraceApp: App {
    var body: some Scene {
        WindowGroup {
            if(UserDefaults.standard.isLoggedIn() == true) {
                NavigationView {
                    HomeView()
                }
            } else {
                NavigationView {
                    GettingStartedView()
                }
            }
        }
    }
}
