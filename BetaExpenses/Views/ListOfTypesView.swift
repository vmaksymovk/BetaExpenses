
import SwiftUI

struct ListOfTypesView: View {
    @ObservedObject private var addedTypeToList = TypesFromArray()
    var body: some View {
        NavigationStack{
            List{
                ForEach(addedTypeToList.types){ item in
                    Text(item.type)
                }
                .onDelete(perform: removeType)
            }
            .navigationTitle("List Of types")
        }
    }
    func removeType(at offsets : IndexSet) {
        addedTypeToList.types.remove(atOffsets: offsets)
    }
}

#Preview {
    ListOfTypesView()
}
