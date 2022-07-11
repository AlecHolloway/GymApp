//
//  viewModel.swift
//  GymApp
//
//  Created by Alec on 7/3/22.
//

import SwiftUI

class MuscleExercises {
    static let MuscleGroupList: [String] = ["Arms", "Shoulders", "Chest", "Back", "Legs", "Buttocks", "Abdomen"]
    
    //create the model
    private var model = FullBody(MuscleGroupList: MuscleGroupList)
   
    
    var MuscleGroups: Array<FullBody.MuscleGroup> {
        return model.MuscleStructs
    }
}
