//
//  ContentView.swift
//  Shared
//
//  Created by Alec on 6/22/22.
//

import SwiftUI

struct ContentView: View {
    //let exercises = ["Lower Body", "Upper Body", "Full Body"]
    var body: some View {
        NavigationView {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                VStack {
//                    Text("Select ")
//                    .font(.title)
//                    .padding(50)
                    NavigationLink (
                        destination: LowerBody(),
                        label: { CardView(content: "Lower Body") })
                    NavigationLink (
                        destination: UpperBody(),
                        label: { CardView(content: "Upper Body") })
                    NavigationLink (
                        destination: FullBody(),
                        label: { CardView(content: "Full Body") })
                       
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var content: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            Text(content)
                .frame(maxWidth: .infinity)
        } .frame(height: 50.0)
    }
}

