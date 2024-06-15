//
//  MenuView.swift
//  Challenge_2_IOS_App7
//
//  Created by Adil Aman Mohammed on 6/13/24.
//

import SwiftUI

struct MenuView: View {
    
    @State var photoData = [String]()
    @State var selectedPhoto = " "
    @State var sheetVisible = false
    var DataServices = DataService()
    
    
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text("Our Meals").font(.largeTitle).bold()
            
            GeometryReader{ proxy in
                
                ScrollView(){
                    
                    
                    LazyVGrid(columns: [GridItem(spacing: 10),GridItem(spacing: 10)]){
                        
                        ForEach(photoData,  id: \.self){ p in
                            
                            Image(p).resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10.0)
                                .clipped()
                                .frame(maxWidth: (proxy.size.width+150)/3)
//                                .frame(maxHeight:100)
                                .padding(.bottom)
                                .onTapGesture {
                                    selectedPhoto = p
                                    sheetVisible = true
                                }
                                
                        }
                        
                    }
                    
                    
                }
                
                
            }
        }.padding(.horizontal)
            .onAppear(){
            photoData = DataServices.getPhotos()
        }
        .sheet(isPresented: $sheetVisible){
                
                PhotoView(selectedPhoto: $selectedPhoto, sheetVisible: $sheetVisible)
            }
        
        
    }
}

#Preview {
    MenuView()
}
