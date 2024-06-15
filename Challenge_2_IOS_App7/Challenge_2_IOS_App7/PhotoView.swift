//
//  PhotoView.swift
//  Challenge_2_IOS_App7
//
//  Created by Adil Aman Mohammed on 6/14/24.
//

import SwiftUI

struct PhotoView: View {
    
    @Binding var selectedPhoto : String
    @Binding var sheetVisible : Bool
    
    
    var body: some View {
        ZStack{
            Image(selectedPhoto).resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15.0)
                .padding(.horizontal,10.0)
            VStack{
                HStack{
                    
                    Spacer()
                    Button {
                        sheetVisible = false
                    } label: {
                        Image(systemName: "x.circle").foregroundColor(.gray)
                            .scaleEffect(2)
                    }.padding()
                    
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    PhotoView(selectedPhoto: Binding.constant("1"), sheetVisible: Binding.constant(true))
}
