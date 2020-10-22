//
// Created by Justin Lange on 22/10/2020.
//

import SwiftUI

struct Card: View {

    var image: String
    var category: String
    var heading: String

    var body: some View {
        VStack {
            Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)

            HStack {
                VStack(alignment: .leading) {
                    Text(category)
                            .font(.headline)
                            .foregroundColor(.secondary)
                            .padding(.top, 2)
                    Text(heading)
                            .font(.system(size: 26, weight: .bold, design: .default))
                            .foregroundColor(.primary)
                            .lineLimit(3)
                            .padding(.top, 2)
                }
                        .layoutPriority(100)
                Spacer()
            }
                    .padding()
        }
                .cornerRadius(10)
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.2), lineWidth: 1)
                )
                .padding([.top, .horizontal])
    }
}