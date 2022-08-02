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
            ZStack {
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
               
                    VStack {
                        ForEach(viewModel.MuscleGroups) { muscleGroup in
                            NavigationLink(destination: MuscleExerciseCardView(muscleCard: muscleGroup)) {
                                MuscleCardView(muscleCard: muscleGroup)
                    }
                }
            }
        }
    }
}

struct MuscleCardView: View {
    let muscleCard: FullBody.Muscle
    
    
    var body: some View {
        ZStack {
          let shape = RoundedRectangle(cornerRadius: 20)
          shape.fill().foregroundColor(.white)
          shape.strokeBorder(lineWidth: 3)
          Text(muscleCard.name)
        } .frame(height: 50.0)
    }
}

struct MuscleExerciseCardView: View {
    let muscleCard: FullBody.Muscle

    var body: some View {
        List{
            ForEach(muscleCard.muscleExercises, id: \.self) {muscleExercises in
                Text(muscleExercises)
            }
        }
    }
}

struct LogInView: View {
    @ObservedObject var viewModel: MuscleExercises
    
    @State var userName: String = ""
    @State var password: String = ""
    
    var body: some View {
        let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
        NavigationView {
        VStack {
            Text("Welcome")
            TextField("Username", text:$userName)
                .padding()
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                .background(lightGreyColor)
            SecureField("Password", text:$password)
                .padding()
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                .background(lightGreyColor)
            HStack {
                NavigationLink(destination: ContentView(viewModel: viewModel)) {
                    LoginButtonCotent()
                    }
                    CreateUserButton()
                }
            }
        }
    }
    struct LogInViewConstants {
        
    }
    
}

struct LoginButtonCotent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.purple)
            .cornerRadius(15.0)
    }
}
struct CreateUserButton: View {
    var body: some View {
        Text("Create User")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.purple)
            .cornerRadius(15.0)
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

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        let MuscleTypeList = MuscleExercises()
        LogInView(viewModel: MuscleTypeList)
    }
}

