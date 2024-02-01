//
//  ContentView.swift
//  BetaExpenses
//
//  Created by Влад on 2/1/24.
//
import Observation
import SwiftUI

struct UserData1 {
    var firstname : String = ""
    var lastName : String = ""
    var age = "0"
}
@Observable
class UserData2 {
    var firstname : String = ""
    var lastName : String = ""
    var age = "0"
}

struct SecondView : View {
    @Environment(\.dismiss) var dismiss
    @State private var user1 = UserData1()
    var body: some View {
        VStack{
            Text("Struct")
                .bold()
                .font(.largeTitle)
            
            Text("\(user1.firstname) \(user1.lastName) \(user1.age)")
            TextField("First Name", text: $user1.firstname)
            TextField("Last Name", text: $user1.lastName)
            TextField("Age", text: $user1.age)
            
            
            
            Button("Dismiss"){
                dismiss()
            }
        }
    }
}




struct ContentView: View {
    @State private var user2 = UserData2()
    @State private var showingSheet : Bool = false
    var body: some View {
        VStack {
            Text("CLASS")
                .bold()
                .font(.largeTitle)
            
            
            
            Text("\(user2.firstname) \(user2.lastName) \(user2.age)")
            TextField("First Name", text: $user2.firstname)
            TextField("Last Name", text: $user2.lastName)
            TextField("Age", text: $user2.age)
            
            
            Button("Show Sheet"){
                showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet, content: {
                SecondView()
            })
        }
    }
}

#Preview {
    ContentView()
}
