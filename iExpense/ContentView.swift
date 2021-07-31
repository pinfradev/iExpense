//
//  ContentView.swift
//  iExpense
//
//  Created by Fray Pineda on 19/7/21.
//

import SwiftUI

struct User: Codable {
    var firstName: String
    var lastName: String
}


struct ContentView: View {
    
    @State private var user = User(firstName: "Tailor", lastName: "Swift")
    
    var body: some View {
        Button("save user") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(self.user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
