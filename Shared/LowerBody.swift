//
//  LowerBody.swift
//  GymApp
//
//  Created by Alec on 6/27/22.
//

import SwiftUI

struct LowerBody: View {
    var body: some View {
        ZStack {
            //Image("background1")
            VStack {
                Text("Muscle Group")
                List(lowerMusclesGroup) {
                    Text($0.name)
                        
                    }
            }
        }
    }
}
struct UpperBody: View {
    var body: some View {
        ZStack {
            //Image("background1")
            VStack {
                Text("Muscle Group")
                List(UpperMusclesGroup) {
                    Text($0.name)
                        
                    }
            }
        }
    }
}



struct LowerBody_Previews: PreviewProvider {
    static var previews: some View {
        LowerBody()
    }
}


struct UpperBody_Previews: PreviewProvider {
    static var previews: some View {
        LowerBody()
    }
}

struct LowerMuscles: Identifiable {
    let name: String
    let id = UUID()
}

struct UpperMuscles: Identifiable {
    let name: String
    let id = UUID()
}

private var lowerMusclesGroup = [
    LowerMuscles(name: "Quadriceps"),
    LowerMuscles(name: "Adductors"),
    LowerMuscles(name: "Hamstrings"),
    LowerMuscles(name: "Glutes"),
]


private var UpperMusclesGroup = [
    UpperMuscles(name: "Chest"),
    UpperMuscles(name: "Biceps"),
    UpperMuscles(name: "Triceps"),
    UpperMuscles(name: "Shoulders"),
]


