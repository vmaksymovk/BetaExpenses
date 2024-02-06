
import SwiftUI

struct SettingView: View {
    @State private var isAddtypesPresenting : Bool = false
    @StateObject private var types = TypesFromArray()
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
            
            .padding(.top, 40)
            Spacer()
            VStack{
                List{
                    NavigationLink("Add types") {
                        ListOfTypesView()
                            .toolbar{
                                Button("Add types", systemImage: "plus") {
                                    isAddtypesPresenting = true
                                }
                            }
                            .sheet(isPresented: $isAddtypesPresenting, content: {
                                AddTypes(typesItems: types)
                            })
                    }
                }
                .navigationTitle("Settings")
            }
        }
    }
}

#Preview {
    SettingView()
}
