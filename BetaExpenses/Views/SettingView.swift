//
//  SettingView.swift
//  BetaExpenses
//
//  Created by Влад on 2/6/24.
//

import SwiftUI

struct SettingView: View {
    @State private var isAddtypesPresenting : Bool = false
    @State private var types = TypesFromArray()
    var body: some View {
        NavigationStack{
            VStack{
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 140, height: 140)
                    .foregroundStyle(.blue)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(Color.gray, lineWidth: 4)
                    }
                    .shadow(radius: 8)
                
                
            }
            .navigationTitle("Settings")
            .padding(.top, 40)
            Spacer()
            VStack{
                List{
                    NavigationLink {
                        ListOfTypesView()
                            .toolbar{
                                Button("Add types", systemImage: "plus") {
                                    isAddtypesPresenting = true
                                }
                            }
                            .sheet(isPresented: $isAddtypesPresenting, content: {
                                AddTypes(typesItems: types)
                            })
                    } label: {
                        HStack {
                            Text("Add types")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SettingView()
}
