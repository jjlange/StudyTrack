//
// Created by Justin Lange on 21/10/2020.
//

import SwiftUI

struct HomeView: View {

    // labels
    @State var titleLabel: String = "Welcome back  👋"

    // status message
    @State var statusMessageBackground: Color = Color.red
    @State var statusMessageForeground: Color = .white
    @State var statusMessageContent: String = "The risk is currently: High \nWe do not recommend on-campus lectures."

    var body: some View {
        TabView {
            VStack {
                HomeTabView()
            }.navigationBarHidden(true).tabItem {
                Image(systemName: "heart.fill")
                Text("Track & Home")
            }

            VStack {
                WellbeingTabView()
            }.navigationBarHidden(true).tabItem {
                Image(systemName: "figure.wave.circle.fill")
                Text("Wellbeing")
            }

            VStack {
                CommunityTabView()
            }.navigationBarHidden(true).tabItem {
                Image(systemName: "person.2.circle.fill")
                Text("Community")
            }

            VStack {
                SettingsTabView()
            }.navigationBarHidden(true).tabItem {
                Image(systemName: "gearshape.fill")
                Text("Settings")
            }

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}