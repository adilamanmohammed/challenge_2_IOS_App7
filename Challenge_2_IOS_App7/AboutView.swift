//
//  AboutView.swift
//  Challenge_2_IOS_App7
//
//  Created by Adil Aman Mohammed on 6/13/24.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView(showsIndicators: true){
            
            VStack(alignment: .leading){
                
                Text("Our Story").font(.largeTitle).bold().padding(.leading).padding(.bottom,15.0)
                
                Text("Student union in the world,the Oklahoma State University Student Union is a student activity center for meetings, conferences, meals, recreation, and shopping for students and alumni on the campus of Oklahoma State University in Stillwater, Oklahoma. Constructed in 1950, the Student Union serves as one of the largest and most comprehensive unions in the world. The Student Union was the first union in the United States to be completely funded by self-liquidating bonds. Five major expansions of the Union took place in 1960, 1965, 2000, 2012 and 2016 with an adjacent parking garage built in 1970.The Student Union was closed during the 2010 - 2011 academic school year for renovation; with the majority of student services relocated to several places around campus like the Classroom Building basement or the UToo temporary building.The Union contains the modern 81-room Atherton Hotel at OSU (formerly known simply as the Student Union Hotel), maintained by the Oklahoma State School of Hotel and Restaurant Administration. The Atherton is named for Oklahoma State alum Bill Atherton and serves as a living classroom for Hotel and Restaurant Administration students while providing luxury boutique hotel services for guests.The Union is also home to the luxurious Ranchers Club restaurant, a 550-seat theater, art exhibits, lounges, meeting rooms, an extensive food court, bookstores, the OSU Student Store, a recreation center, post office, travel agency, athletic ticket office, and multiple university offices. Many student organizations, including the Student Union Activities Board, are centered at the Union.").padding(.leading)
                
            }
            
        }
    }
}

#Preview {
    AboutView()
}
