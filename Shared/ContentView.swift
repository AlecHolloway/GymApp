//
//  ContentView.swift
//  Shared
//
//  Created by Alec on 6/22/22.
//

import SwiftUI

struct ContentView: View {
    let viewModel: MuscleExercises
    
    var body: some View {
        NavigationView {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                VStack {
                    ForEach(viewModel.MuscleGroups) {muscle in
                        CardView(card: muscle)
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let MuscleTypeList = MuscleExercises()
        ContentView(viewModel: MuscleTypeList)
    }
}

struct CardView: View {
    let card: FullBody.MuscleGroup
    
    var body: some View {
        ZStack {
           RoundedRectangle(cornerRadius: 20)
             .stroke()
             .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            Text(card.name)
               .frame(maxWidth: .infinity)
        } .frame(height: 50.0)
    }
}

