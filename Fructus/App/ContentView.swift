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
    @State private var isShowingSettings : Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationStack(root: {
            List {
                ForEach(fruit.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)){
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                } // : BUtton
                .sheet(isPresented: $isShowingSettings, content: {
                    SettingsView()
                })
            }
        })//: NavigationView
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView(fruit: fruitsData)
}
