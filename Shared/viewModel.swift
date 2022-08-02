//
//  viewModel.swift
//  GymApp
//
//  Created by Alec on 7/3/22.
//

import SwiftUI

class MuscleExercises: ObservableObject {
    
    static let muscleGroups = ["Arms", "Shoulder", "Chest", "Back", "Legs", "Buttocks", "Abdomen"]

    static let exerciseGroups: [[String]] = [
        ["Dumbbell Curls", "Concentration Curls", "Incline Dumbell Curls", "Hammer Curls", "Barbell Curls", "Preacher Curls", "Wrist Curls", "Tricep Kickbacks"],
        ["Arnold Presses", "Lateral Dumbell Raises", "Alternate Front Arm Raises", "Bent-Over Lat Raises"],
        ["Bench Press", "Incline Bench Press", "Decline Bench Press", "Dips", "Push-Ups", "Dumbell Presses", "Incline Dumbell Flys"],
        ["Deadlift", "Sumo Deadlift", "Chin-Ups", "Pull-Ups", "Lat Pull Downs", "Seated Rows", "Barbell Rows", "Barbell Shrugs"],
        ["Squat", "Leg Press", "Leg Extensions", "Leg Curls", "Machine Adductions", "Machine Abductions", "Calf Raises"],
        ["Barbell Lunges", "Cable Back Kicks", "Bridging"],
        ["Crunches", "Sit-Ups", "Planks", "Twists"]
    ]
    
//    static let userName: String = ""
//    static let password: String = ""
//    static let heightInFeet: Int = 0
//    static let heightInInches: Int = 0
//    static var weightInPounds: Int = 0

    
    //create the models
    @Published private var exerciseModel = FullBody(musclegroup: muscleGroups, exerciseGroup: exerciseGroups)
    //@Published private var userModel = User(userName: String, password: String, feet: Int, inches: Int, pounds: Int)
    
    var MuscleGroups: Array<FullBody.Muscle> {
        return exerciseModel.MuscleStructs
    }
//    var ExerciseGroups: Array<FullBody.Exercise> {
//        return model.ExerciseStructs
//    }
}
