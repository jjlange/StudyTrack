//
//  StartView.swift
//  TrackAndTrace
//
//  Created on 15/10/2020.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        Image("start_image_view").resizable()
                .frame(height: 250.0, alignment: .top).ignoresSafeArea()

        VStack() {
            HStack {
                Image(systemName: "waveform.path.ecg")
                        .font(.system(size: 55)).foregroundColor(Color("Gray"))
            }.padding().frame(width: 420, height: 50, alignment: .topLeading)

            VStack(alignment: .leading) {
                Text("The tracing app that")
                        .font(.system(size: 34, weight: .bold, design: .rounded)).padding(.top, 20)
                Text("protects students in")
                        .font(.system(size: 34, weight: .bold, design: .rounded))
                Text("universities.")
                        .font(.system(size: 34, weight: .bold, design: .rounded))
            }.padding().frame(width: 400, alignment: .topLeading)
        }

        Spacer()
        Button(action: {
            print("SwiftUI: Button tapped!")
        }) {
            HStack {
                Text("Getting Started ")
                        .fontWeight(.semibold)
                        .font(.title2)
            }
                    .frame(minWidth: 0, maxWidth: 240)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color("Gray"), Color("Blue")]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(50)
                    .padding(.top, 60)
        }
        Spacer()
        Text("Copyright © 2020, created by students.\nVersion: 1.0.0").foregroundColor(Color("Gray")).padding(.top, 40).font(.body).multilineTextAlignment(.center)
        Spacer()
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
