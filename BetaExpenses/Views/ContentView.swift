import Observation
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            ExpensesView()
                .tabItem {
                    Label("Main", systemImage: "icloud.and.arrow.up")
                }
//            AddView(expenses: Expenses())
//                .tabItem {
//                    Label("SynchronizationTest", systemImage: "link.icloud.fill")
//                }
        }
        
    }
}

#Preview {
    ContentView()
}
