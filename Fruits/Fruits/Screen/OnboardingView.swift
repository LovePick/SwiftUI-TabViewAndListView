//
//  OnboardingView.swift
//  Fruits
//
//  Created by Supapon Pucknavin on 25/9/2565 BE.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIE
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
              
            }
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}


//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
        
    }
}
