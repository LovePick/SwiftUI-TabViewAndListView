//
//  ContentView.swift
//  Fruits
//
//  Created by Supapon Pucknavin on 25/9/2565 BE.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        
        NavigationView(){
            List {
                ForEach(fruits.shuffled()) { item in
                    
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                    
                }
            }//: LIST
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                        
                    })//: BUTTOM
                    .sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
            )//: NAVIGATION BAR ITEM
        }//: NAVIGATION
        
    }
}


// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
