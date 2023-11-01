//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Pratiksha on 27/10/23.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var fruit : Fruit
    
    var body: some View {
        NavigationView(content: {
            ScrollView(.vertical) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20, content: {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        // SUBHEADING
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }) // VSTAck
                    .padding(20)
                    .frame(maxWidth: 640, alignment: .center)
                }//: VStack
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(.hidden, for: .navigationBar)
            }//: ScrollView
            .ignoresSafeArea()
        }) // : NAVIGATION
    }
}

// MARK: - PREVIEW
#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
