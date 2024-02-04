//
//  UserDefaultsTest.swift
//  BetaExpenses
//
//  Created by Влад on 2/2/24.
//

import SwiftUI

struct ExpensesView: View {
    @State private var expenses = Expenses()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(expenses.items, id: \.name){ item in
                    Text(item.name)
                    
                }
            }
        }.navigationTitle("Expenses")
        
    }
}

#Preview {
    ExpensesView()
}
