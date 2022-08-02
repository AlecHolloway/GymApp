//
//  MuscleExercises.swift
//  GymApp
//
//  Created by Alec on 7/3/22.
//

import Foundation
struct Database {
    func addUser() {}
    func removeUser() {}
    func searchForUserName() {}
    func searchForPassword() {}
    func addWorkout() {}
    func listLastFewExercises() {}
    
}

struct User {
    let userName: String
    let password: String
    let heightInFeet: Int
    let heightInInches: Int
    var weightInPounds: Int
    
    init( name: String, password: String, feet: Int, inches: Int, pounds: Int) {
        self.userName = name
        self.password = password
        self.heightInFeet = feet
        self.heightInInches = inches
        self.weightInPounds = pounds
    }
    
    func getName() -> String {
        return userName
    }
    func getHeightInFeet() -> Int {
        return heightInFeet
    }
    func getHeightInInches() -> Int {
        return heightInInches
    }
    func getWeightInPounds() -> Int {
        return weightInPounds
    }

}

struct FullBody {
    private(set) var MuscleStructs : Array<Muscle>
    //private(set) var ExerciseStructs : Array<Exercise>
    //private(set) var FullBodyExercises: []
    
    
    init(musclegroup: [String], exerciseGroup: [[String]]) {
        let muscleGroupList = musclegroup
        let exerciseGroupList = exerciseGroup
        let muscleExerciseGroupList = zip(muscleGroupList, exerciseGroupList)
        
        MuscleStructs = Array<Muscle>()
        //ExerciseStructs = Array<Exercise>()
        var id_counter: Int = 0
        for (muscle, exercise) in muscleExerciseGroupList {
            MuscleStructs.append(Muscle(name: muscle, muscleExercises: exercise, id: id_counter))
            id_counter+=1
        }
        print(MuscleStructs[0])
        
        
        
    }
    
    struct Muscle: Identifiable {
        let name: String
        let muscleExercises: [String]
        var id: Int
    }
    
//    struct Exercise: Identifiable {
//        let exerciseList: [String]
//        var id: Int
//    }

}

