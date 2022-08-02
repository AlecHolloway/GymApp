//
//  GymAppApp.swift
//  Shared
//
//  Created by Alec on 6/22/22.
//

import SwiftUI

@main
struct GymAppApp: App {
    let MuscleTypeList = MuscleExercises()
    var body: some Scene {
        WindowGroup {
            //ContentView(viewModel: MuscleTypeList)
            LogInView(viewModel: MuscleTypeList)
        }
    }
}
