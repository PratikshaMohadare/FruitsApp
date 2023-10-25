//
//  FruitCardView.swift
//  Fructus
//
//  Created by Pratiksha on 11/10/23.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROPERTIES
    @State private var isAnimating: Bool = false

    // MARK: - BODY
    var body: some View {
        
        ZStack {
            VStack(spacing: 20) {
                // FRUIT IMAGE
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // FRUIT TITLE
                Text("Blueberry")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2 ,x: 2, y: 2)
                
                // FRUIT HEADLINE
                Text("Blueberries are sweet, nutricious, and wildly popular fruit all over the world.")
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // BUTTON START
                StartButtonView()

            } //: VStack
        } //: ZStack
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")], startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        
    }
}

// MARK: - Preview
#Preview {
    FruitCardView()
        .previewLayout(.fixed(width: 320, height: 640))
}
