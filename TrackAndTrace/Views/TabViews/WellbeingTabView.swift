//
// Created by Justin Lange on 21/10/2020.
//

import SwiftUI
import SwiftyJSON

struct WellbeingTabView: View {
    @State private var pushWelcomeView = false

    @State var statusMessageBackground: Color = Color.green
    @State var statusMessageForeground: Color = .white
    @State var statusMessageTitle: String = ""
    @State var statusMessageContent: String = ""

    let cards = [
        CardRowModal(title: "Always Keep Distance", content: "", image: "cardImage1", width: 230, height: 150),
        CardRowModal(title: "Wear A Mask", content: "", image: "cardImage2", width: 230, height: 150),
        CardRowModal(title: "Self Isolate If Required", content: "", image: "cardImage3", width: 230, height: 150)
    ]

    var body: some View {
        VStack() {
            VStack(alignment: .leading, spacing: 25) {
                HStack {
                    Text("Wellbeing")
                            .font(.system(size: 34, weight: .bold, design: .rounded))
                            .padding(.top, 20)
                    Spacer()
                    HStack {
                        Label("", systemImage: "figure.wave.circle.fill").font(.system(size: 36, weight: .light, design: .rounded))
                                .padding(.top, 20).foregroundColor(.blue)
                    }
                }
            }
        }.padding().frame(width: 400, alignment: .topLeading)
        ScrollView {
            Text("Our team is still working on this page. Message us if you have any suggestions!")
                    .font(.system(size: 22, weight: .semibold, design: .rounded))
                    .multilineTextAlignment(.center).padding()
            Card(image: "cardBackgroundImage", category: "STUCK IN SELF ISOLATION?", heading: "Here are some things you can do inside")

            VStack(alignment: .leading) {

                Text("Protect yourself & Others")
                        .font(.system(size: 25))
                        .fontWeight(.heavy)
                        .padding(.leading, 30)
                        .padding(.top, 25)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(cards) { item in
                            CardRowView(item: item)
                        }
                    }
                            .padding(10)
                            .padding(.leading, 10)
                }
            }
        }
    }
}

struct WellbeingTabView_Previews: PreviewProvider {
    static var previews: some View {
        WellbeingTabView()
    }
}
