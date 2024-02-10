
import SwiftUI

protocol CustomColorProtocol {
    var background : Color { get }
    var foreground : Color { get }
    
}


struct DefaultColors : CustomColorProtocol {
    var background: Color = .blue
    var foreground: Color = .white
    
}

struct ListOfTypesView: View {
    
    @ObservedObject private var addedTypeToList = TypesFromArray()
    var colorTheme : DefaultColors
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(addedTypeToList.types){ item in
                    Text(item.type)
                        .foregroundStyle(colorTheme.background)
                }
                .onDelete(perform: removeType)
            }
            .navigationTitle("List Of types")
            .onTapGesture {
                print("User clicked")
            }
        }
    }
    func removeType(at offsets : IndexSet) {
        addedTypeToList.types.remove(atOffsets: offsets)
    }
}

#Preview {
    ListOfTypesView(colorTheme: DefaultColors())
}
