//
//  ContentView.swift
//  BetaExpenses
//
//  Created by Влад on 2/1/24.
//
import Observation
import SwiftUI

struct SecondView : View {
    @Environment(\.dismiss) var dismiss
    @State private var isRepresentaingSheet : Bool = true
    var body: some View {
        Button("Dismiss 1"){
            dismiss()
        }
        
    }
}




struct ContentView: View {
    @State private var showingSheet : Bool = false
    var body: some View {
        VStack {
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
