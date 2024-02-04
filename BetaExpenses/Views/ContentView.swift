import Observation
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            UserDefaultsTest()
                .tabItem {
                    Label("Main", systemImage: "icloud.and.arrow.up")
                }
            SynchronizationTest()
                .tabItem {
                    Label("SynchronizationTest", systemImage: "link.icloud.fill")
                }
        }
        
    }
}

#Preview {
    ContentView()
}
