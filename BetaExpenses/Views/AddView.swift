//
//  SynchronizationTest.swift
//  BetaExpenses
//
//  Created by Влад on 2/2/24.
//

import SwiftUI

struct AddView: View {
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0
    @Environment(\.dismiss) var dismiss
    var expenses : Expenses
    var types = TypesFromArray()
    
    
    var body: some View {
        NavigationStack{
            Form{
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type){
                    ForEach(types.types){ type in
                        Text("\(type.type)").tag(type.type)
                    }
                }
                
                TextField("Amount",value: $amount, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add expense")
            .toolbar{
                Button("Save"){
                    
                    let item = ExpensesItem(name: name, type: type, amount: amount)
                    expenses.items.append(item)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    AddView(expenses: Expenses())
}
