//
//  viewModel.swift
//  GymApp
//
//  Created by Alec on 7/3/22.
//

import SwiftUI

class MuscleExercises {
    
    static let MuscleGroupsAndExercises:  [String: [String]] =
    ["Arm":
        ["Dumbbell Curls", "Concentration Curls", "Incline Dumbell Curls", "Hammer Curls", "Barbell Curls", "Preacher Curls", "Wrist Curls", "Tricep Kickbacks"],
     
     "Shoulder":
        ["Arnold Presses", "Lateral Dumbell Raises", "Alternate Front Arm Raises", "Bent-Over Lat Raises"],
     
     "Chest":
        ["Bench Press", "Incline Bench Press", "Decline Bench Press", "Dips", "Push-Ups", "Dumbell Presses", "Incline Dumbell Flys"],
     
     "Back":
        ["Deadlift", "Sumo Deadlift", "Chin-Ups", "Pull-Ups", "Lat Pull Downs", "Seated Rows", "Barbell Rows", "Barbell Shrugs"],
     
     "Legs":
        ["Squat", "Leg Press", "Leg Extensions", "Leg Curls", "Machine Adductions", "Machine Abductions", "Calf Raises"],
     
     "Buttocks":
        ["Barbell Lunges", "Cable Back Kicks", "Bridging"],
     
     "Abdomen":
        ["Crunches", "Sit-Ups", "Planks", "Twists"]
     ]
     
    
    
    
    //create the model
    private var model = FullBody(MuscleAndExercises: MuscleGroupsAndExercises)
   
    
    var MuscleGroups: Array<FullBody.MuscleGroup> {
        return model.MuscleStructs
    }
}
