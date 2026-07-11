//
//  HeaderScrollableView.swift
//  Airbnb
//
//  Created by Alexis Horteales Espinosa on 10/07/26.
//

import SwiftUI


struct HeaderScrollableView: View {
    
    var booking: BookingResponse
    var headerHeight: CGFloat
    @Binding var scrollOffest: CGFloat
    
    var body: some View {
        Rectangle()
            .fill(.white)
            .frame(height: scrollOffest > headerHeight / 2 ? 120 : 80)
            .opacity(scrollOffest > headerHeight / 2 ? 1 : 0)
            .overlay(
                HStack{
                    Button{
                        
                    }label: {
                        ZStack{
                            Circle()
                                .fill(.white)
                                .frame(width: 36, height: 36)
                            Image(systemName: "chevron.left")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 8, height: 8)
                                .foregroundStyle(.black)
                        }
                    }
                    Spacer()
                    HStack(spacing: 14){
                        Button{
                            
                        }label: {
                            ZStack{
                                Circle()
                                    .fill(.white)
                                    .frame(width: 36, height: 36)
                                Image(systemName: "square.and.arrow.up")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 16, height: 16)
                                    .foregroundStyle(.black)
                            }
                        }
                        
                        Button{
                            
                        }label: {
                            ZStack{
                                Circle()
                                    .fill(.white)
                                    .frame(width: 36, height: 36)
                                Image(systemName: booking.isFavorite ? "heart.fill" : "heart" )
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 16, height: 16)
                                    .foregroundStyle( booking.isFavorite ? Color.primaryColor : .black)
                            }
                        }
                        
                    }
                }
                .padding(.horizontal)
            )
            .offset(y: scrollOffest > headerHeight / 2 ? 0 : -80)
            .animation(.easeInOut, value: scrollOffest)
        
        
        
    }
}

