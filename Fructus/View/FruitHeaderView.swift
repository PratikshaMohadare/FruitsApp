//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Pratiksha on 27/10/23.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - PROPERTIES
    var fruit : Fruit
    
    @State private var isAnimatingImage: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.18), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.5)
        } // ZTSTACK
        .frame(height: 440)

        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

// MARK: - Previews
#Preview {
    FruitHeaderView(fruit: fruitsData[0])
        .previewLayout(.fixed(width: 375, height: 440))
}
