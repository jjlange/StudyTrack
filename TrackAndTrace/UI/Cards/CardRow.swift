//
// Created by Justin Lange on 22/10/2020.
//


import SwiftUI

struct CardRowModal: Identifiable {
    var id = UUID()
    var title: String
    var content: String
    var image: String
    var width: Int
    var height: Int
}

struct CardRow: View {
    @State var viewState = CGSize.zero

    var body: some View {
        ZStack {
            BlurView(style: .systemMaterial)

            CardRowView()
                    .offset(x: viewState.width, y: viewState.height)
        }
    }
}

struct CardRowView: View {

    var item = CardRowModal(title: "Title", content: "Content", image: "cardBackgroundImage", width: 340, height: 220)

    var body: some View {
        return VStack {

            Image(item.image)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .offset(y: 50).overlay(
                            VStack() {
                                Spacer()
                                HStack {

                                        Text(item.title)
                                                .font(.title)
                                                .fontWeight(.bold)
                                                .foregroundColor(.white).padding().lineLimit(2).multilineTextAlignment(.center)
                                }
                                Spacer()
                            })
        }
                .frame(width: CGFloat(item.width), height: CGFloat(item.height))
                .background(Color.black)
                .cornerRadius(10)
                .shadow(radius: 10)
    }
}