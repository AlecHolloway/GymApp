//
//  MuscleExercises.swift
//  GymApp
//
//  Created by Alec on 7/3/22.
//

import Foundation

//struct FullBody {
//
//    struct Arms {
//        let arm_exercises: [String] = ["Dumbbell Curls", "Concentration Curls"]
//    }
//
//    struct Shoulders {
//        let shoulder_exercises: [String] = ["Seated Bumbell Presses", "Arnold Presses"]
//    }
//
//    struct Chest {
//        let chest_exercises: [String] = ["Incline Bench Presses", "Parallen Bar Dips"]
//    }
//
//    struct Back {
//        let back_exercises: [String] = ["Chin-Ups", "Lat Pull-Downs"]
//    }
//
//    struct Legs {
//        let leg_exercises: [String] = ["Front Squats", "Incline Leg Press"]
//    }
//
//    struct Buttocks {
//        let buttocks_exercises: [String] = ["Barbell Lunges", "Cable Back Kicks"]
//    }
//
//    struct Abdomen {
//        let abdomen_exercises: [String] = ["Crunches", "Sit-ups"]
//    }
//}

struct FullBody {
    private(set) var MuscleStructs : Array<MuscleGroup>
    
    
    init(MuscleGroupList: [String]) {
        let List: [String] = MuscleGroupList
       print(List)
        MuscleStructs = Array<MuscleGroup>()
        var id_counter: Int = 0
        for muscle in List {
            MuscleStructs.append(MuscleGroup(name: muscle, id: id_counter))
            id_counter+=1
         }
    }
    
    struct MuscleGroup: Identifiable {
        var name: String
        var id: Int
        //var exercises: String
    }
}
