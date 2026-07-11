//
//  ImageScrollableView.swift
//  Airbnb
//
//  Created by Alexis Horteales Espinosa on 10/07/26.
//

import SwiftUI
import Kingfisher

struct ImageScrollableView: View {
    var headerHeight: CGFloat
    @Binding var scrollOffset: CGFloat
    var booking:BookingResponse
    
    var body: some View {
        GeometryReader{ geo in
            let offest = geo.frame(in: .global).minY
            ImageSlideView(booking: booking)
                .frame(height: headerHeight)
                .clipped()
                .offset(y: offest > 0 ? -offest : 0)
                .opacity(offest > -headerHeight ? 1 : 0)
                .onChange(of: offest) { _, newValue in
                    scrollOffset = -newValue
                }
        }
        .frame(height: headerHeight)
        
    }
}

struct ImageSlideView: View{
    var booking: BookingResponse
    var width = UIScreen.main.bounds.width
    @State private var selectedIndex: Int = 0
    @Environment(\.dismiss) var dismiss
    var body: some View{
        ZStack{
            //images
            TabView(selection: $selectedIndex){
                ForEach(booking.placeImages.indices, id: \.self){ index in
                    KFImage(URL(string: booking.placeImages[index]))
                        .resizable()
                        .scaledToFill()
                        .frame(width: width, height: 350)
                    
                        .tag(booking.placeImages[index])
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(height: 350)
            
            //icons
            VStack{
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
               
                Spacer()
                //inidcator
                Text("\(selectedIndex+1)\(booking.placeImages.count)")
                    .padding(.vertical,2)
                    .padding(.horizontal, 12)
                    .font(.subheadline)
                    .foregroundStyle(.white)
                    .background(.black.opacity(0.6))
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    
                }
            
                .padding(.top, 50)
                .padding(.bottom)
                .padding(.horizontal)
                
            }
            
        }
    }

