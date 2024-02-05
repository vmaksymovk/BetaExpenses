//
//  UserDefaultsTest.swift
//  BetaExpenses
//
//  Created by Влад on 2/2/24.
//

import SwiftUI

struct ExpensesView: View {
    @State private var expenses = Expenses()
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(expenses.items){ item in
                    HStack{
                        VStack(alignment: .leading){
                            Text(item.name)
                                .font(.headline)
                            
                            Text(item.type)
                        }
                        Spacer()
                        Text(item.amount, format: .currency(code: "USD"))
                    }
                    
                }
                .onDelete(perform: removeItem)
            }.navigationTitle("Expenses")
                .toolbar{
                    Button("Add Expense", systemImage: "plus"){
                        showingAddExpense = true
                    }
                }
                .sheet(isPresented: $showingAddExpense, content: {
                    AddView(expenses: expenses)
                })
        }
        
    }
    func removeItem(at offsets : IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

#Preview {
    ExpensesView()
}
