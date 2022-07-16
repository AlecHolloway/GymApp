//
//  viewModel.swift
//  GymApp
//
//  Created by Alec on 7/3/22.
//

import SwiftUI

class MuscleExercises {
    static let MuscleGroupList: [String] = ["Arms", "Shoulders", "Chest", "Back", "Legs", "Buttocks", "Abdomen"]
    
    var FullBodyExercises:  [String: [String]] =
    ["Arm Exercises":
        ["Dumbbell Curls", "Concentration Curls", "Incline Dumbell Curls", "Hammer Curls", "Barbell Curls", "Preacher Curls", "Wrist Curls", "Tricep Kickbacks"],
     
     "Shoulder Exercises":
        ["Arnold Presses", "Lateral Dumbell Raises", "Alternate Front Arm Raises"],
     
     "Chest Exercises":
        ["Bench Press"],
     
     "Back Exercises":
        ["Deadlift"],
     
     "Legs":
        ["Squat"],
     
     "Buttocks":
        ["Barbell Lunges"],
     
     "Abdomen":
       ["Crunches"]
     ]
     
    
    
    
    //create the model
    private var model = FullBody(MuscleGroupList: MuscleGroupList)
   
    
    var MuscleGroups: Array<FullBody.MuscleGroup> {
        return model.MuscleStructs
    }
}
