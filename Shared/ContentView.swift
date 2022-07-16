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
                        ForEach(viewModel.MuscleGroups) { muscle in
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
          let shape = RoundedRectangle(cornerRadius: 20)
          shape.fill().foregroundColor(.white)
          shape.strokeBorder(lineWidth: 3)
           Text(card.name)
              // .frame(maxWidth: .infinity)
        } .frame(height: 50.0)
    }
}

