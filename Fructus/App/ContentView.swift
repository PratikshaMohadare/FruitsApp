//
//  ContentView.swift
//  Fructus
//
//  Created by Pratiksha on 11/10/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruit : [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationView(content: {
            List {
                ForEach(fruit.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)){
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        })
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView(fruit: fruitsData)
}
