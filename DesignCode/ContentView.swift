//
//  ContentView.swift
//  DesignCode
//
//  Created by SteveLiu on 2022/4/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 8){
            Spacer()
            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26.0, height: 26.0)
                .cornerRadius(15.0)
                .padding(9)
                .background(.ultraThinMaterial, in:
                                RoundedRectangle(cornerRadius: 15, style: .continuous))
                .strokeStyle(cornerRadius: 15)
            Text("Swift UI for iOS 15")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
            Text("20 Sections - 3 hours".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
            Text("Build an iOS app for iOS 15 with custom layouts animations and... ")
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.secondary)
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 20.0)
        .padding(.vertical, 20.0)
        .frame(height: 350)
        .background(.thinMaterial,
                    in: RoundedRectangle(cornerRadius: 30.0, style: .continuous))
//        .cornerRadius(30.0)
//        .mask(RoundedRectangle(cornerRadius: 30.0, style: .continuous))
        .shadow(color: Color("Shadow").opacity(0.3), radius: 10.0, x: 0.0, y: 10.0)
        .strokeStyle()
        .padding(.horizontal, 20.0)
        .background(Image("Blob 1").offset(x: 250, y: -100))
        .overlay(
            Image("Illustration 5")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 230)
                .offset(x: 32, y: -80)
        )
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14")
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 14")
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
            .preferredColorScheme(.dark)
    }
}
