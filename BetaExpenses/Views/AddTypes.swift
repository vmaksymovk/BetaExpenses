
import SwiftUI

struct AddTypes: View {
    @State private var type1 = ""
    @ObservedObject var typesItems : TypesFromArray
   
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            Form{
                TextField("Provide with new type", text: $type1)
            }
            .navigationTitle("Add a type")
            
                Button("Save"){
                    let itemOfType = TypeArray(type: type1)
                    typesItems.types.append(itemOfType)
                    dismiss()
                }
            
        }
    }
}

#Preview {
    AddTypes(typesItems : TypesFromArray())
}
