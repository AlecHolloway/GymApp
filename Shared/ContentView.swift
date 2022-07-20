//
//  ContentView.swift
//  Shared
//
//  Created by Alec on 6/22/22.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var viewModel: MuscleExercises
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    VStack {
                        ForEach(viewModel.MuscleGroups) { muscle in
                            NavigationLink(destination: ExerciseView(musclegroups: muscle), label: {CardView(card: muscle)})
                    }
                }
            }
        }
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
        } .frame(height: 50.0)
    }
}

struct ExerciseView: View {
    let musclegroups: FullBody.MuscleGroup
    
    var body: some View {
        ZStack {
          let shape = RoundedRectangle(cornerRadius: 20)
          shape.fill().foregroundColor(.white)
          shape.strokeBorder(lineWidth: 3)
            //Text(musclegroups.exercises[0])
           
        } .frame(height: 50.0)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let MuscleTypeList = MuscleExercises()
        ContentView(viewModel: MuscleTypeList)
    }
}

struct Exercise_Previews: PreviewProvider {
    static var previews: some View {
        let MuscleTypeList = MuscleExercises()
        ContentView(viewModel: MuscleTypeList)
    }
}
