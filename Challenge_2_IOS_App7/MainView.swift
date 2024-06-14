//
//  ContentView.swift
//  Challenge_2_IOS_App7
//
//  Created by Adil Aman Mohammed on 6/13/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        //adding tab bar in bottom
        TabView{
            
            MenuView().tabItem{
                VStack{
                    Image(systemName: "fork.knife")
                    Text("Menu")
                }
                
                
            }
            
            AboutView().tabItem{
                VStack{
                    Image(systemName:"info.circle")
                    Text("About")
                    
                }
            }
            
            
        }
        
        
    }
}

#Preview {
    MainView()
}
