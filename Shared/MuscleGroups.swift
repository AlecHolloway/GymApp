//
//  MuscleExercises.swift
//  GymApp
//
//  Created by Alec on 7/3/22.
//

import Foundation

struct FullBody {
    private(set) var MuscleStructs : Array<MuscleGroup>
    //private(set) var FullBodyExercises: []
    
    
    init(MuscleAndExercises: [String: [String]]) {
        let List: [String: [String]] = MuscleAndExercises
        print(List)
        MuscleStructs = Array<MuscleGroup>()
        var id_counter: Int = 0
        for (key,value) in List {
            MuscleStructs.append(MuscleGroup(name: key, exercises: value, id: id_counter))
            id_counter+=1
        }
    }
    
    struct MuscleGroup: Identifiable {
       let name: String
       var exercises: [String]
       var id: Int
    }
}
