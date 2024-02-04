
import Foundation
import SwiftUI

struct ExpensesItem {
    let name : String
    let type : String
    let amount : Int
}

class Expenses : ObservableObject {
    @Published var items = [ExpensesItem]()
}


enum Months : String, Identifiable, CaseIterable{
    var id: Self {
        return self
    }
    case January = "January"
    case February = "February"
    case March = "March"
    case April = "April"
    case May = "May"
    case June = "June"
    case July = "July"
    case August = "August"
    case September = "September"
    case October = "October"
    case November = "November"
    case December = "December"
}


