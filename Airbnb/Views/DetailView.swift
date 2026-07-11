//
//  DetailView.swift
//  Airbnb
//
//  Created by Alexis Horteales Espinosa on 10/07/26.
//

import SwiftUI

struct DetailView: View {
    var booking: BookingResponse
    //scroll animation header
    @State private var scrollOffset: CGFloat = 0
    var headerHeeight: CGFloat = 350
    var body: some View {
        NavigationStack{
            ZStack(alignment: .bottom){
                //content
                ZStack(alignment: .top){
                    //Content scrollable
                    ScrollView{
                        VStack(spacing: 20){
                            //image scrollable
                            ImageScrollableView(headerHeight: headerHeeight, scrollOffset: $scrollOffset, booking: booking)
                            //content info
                            ContentInfoDetailView(booking: booking)
                            
                            
                        }
                        
                    }
                    //header scrollable content
                    HeaderScrollableView(booking: booking, headerHeight: headerHeeight, scrollOffest: $scrollOffset)
                    
                }
                .padding(.bottom, 100)
                //fixes floating footer button
                FloatingButtonView(booking: booking)
                
            }
            .navigationBarBackButtonHidden(true)
            .ignoresSafeArea()
        }
        
    }
}

