//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Supapon Pucknavin on 26/9/2565 BE.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLable: String? = nil
    var linkDestination: String? = nil
    
    
    //MARK: - BODY
    var body: some View {
        VStack {
            
            Divider()
                .padding(.vertical, 4)
            
            HStack{
                Text(name)
                    .foregroundColor(.gray)
                
                Spacer()
                
                if let content = content {
                    Text(content)
                } else if let linkLable = linkLable , let linkDestination = linkDestination {
                    
                    Link(linkLable, destination: URL(string: "https://\(linkDestination)")!)
                    
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                    
                } else {
                    EmptyView()
                }
                
                
            }//: HSTACK
        }//: VSTACK
    }
}

//MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "John / Jane")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        
        SettingsRowView(name: "Website", linkLable: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
