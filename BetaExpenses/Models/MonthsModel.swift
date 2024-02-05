
import Foundation
import SwiftUI

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






