//
//  ContentView.swift
//  Shared
//
//  Created by Alec on 6/22/22.
//

import SwiftUI

struct ContentView: View {
    let exercises = ["Lower Body", "Upper Body", "Full Body"]
    var body: some View {
        NavigationView {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Select One")
                    .font(.title)
                    .padding(50)
                    ForEach(exercises[0..<exercises.count], id: \.self) { exercise in
                        NavigationLink (
                            destination: LowerBody(),
                            label: { CardView(content: exercise) })
                    }
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
            Text(content)
                .frame(maxWidth: .infinity)
        } .frame(height: 50.0)
    }
}

