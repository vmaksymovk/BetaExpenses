import Observation
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            ExpensesView()
                .tabItem {
                    Label("Main", systemImage: "icloud.and.arrow.up")
                }
            SettingView()
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
        
    }
}

#Preview {
    ContentView()
}
