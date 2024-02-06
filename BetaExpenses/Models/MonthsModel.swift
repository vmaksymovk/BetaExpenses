
import Foundation
import SwiftUI

// For Expenses
struct ExpensesItem : Identifiable, Codable{
    var id = UUID()
    let name : String
    let type : String
    let amount : Double
}
@Observable
class Expenses {
    var items = [ExpensesItem](){
        didSet{
            if let encoded = try? JSONEncoder().encode(items){
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items"){
            if let decodedItems = try? JSONDecoder().decode([ExpensesItem].self, from: savedItems){
                items = decodedItems
                return
            }
        }
        
        items = []
    }
}


// For Types of Expenses
struct TypeArray : Identifiable, Codable{
    var id = UUID()
    var type : String
}

class TypesFromArray : ObservableObject {
    @Published var types = [TypeArray](){
        didSet{
            if let encoded = try? JSONEncoder().encode(types){
                UserDefaults.standard.set(encoded, forKey: "Types")
            }
        }
    }
    init() {
        if let savedTypes = UserDefaults.standard.data(forKey: "Types"){
            if let decodedItems = try? JSONDecoder().decode([TypeArray].self, from: savedTypes){
                types = decodedItems
                return
            }
        }
        
        types = []
    }
}






