//
// Created by Justin Lange on 21/10/2020.
//

import SwiftUI
import SwiftyJSON

struct CommunityTabView: View {
    @State private var pushWelcomeView = false

    @State var statusMessageBackground: Color = Color.green
    @State var statusMessageForeground: Color = .white
    @State var statusMessageTitle: String = ""
    @State var statusMessageContent: String = ""

    var body: some View {
        VStack() {
            VStack(alignment: .leading, spacing: 25) {
                HStack {
                    Text("Community")
                            .font(.system(size: 34, weight: .bold, design: .rounded))
                            .padding(.top, 20)
                    Spacer()
                    HStack {
                        Label("", systemImage: "person.2.circle.fill").font(.system(size: 36, weight: .light, design: .rounded))
                                .padding(.top, 20).foregroundColor(.blue)
                    }
                }
            }
        }.padding().frame(width: 400, alignment: .topLeading)
        ScrollView {
            Text("We are sorry, but our community page is not available yet.")
                    .font(.system(size: 22, weight: .semibold, design: .rounded))
                    .multilineTextAlignment(.center).padding()
        }
    }
}

struct CommunityTabView_Previews: PreviewProvider {
    static var previews: some View {
       CommunityTabView()
    }
}
