//
//  OnboardingView.swift
//  Fruits
//
//  Created by Supapon Pucknavin on 25/9/2565 BE.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIE
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(0..<5){ item in
                FruitCardView()
            }
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}


//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
