//
//  ListBookingView.swift
//  Airbnb
//
//  Created by Alexis Horteales Espinosa on 10/07/26.
//

import SwiftUI
import Kingfisher

struct ListBookingView: View {
    var bookingDatas: [BookingResponse] = bookinsData
    var body: some View {
        LazyVStack(spacing: 24){
            ForEach(bookingDatas){ booking in
                NavigationLink(destination: DetailView(booking: booking)){
                    BookingRowView(booking: booking)
                }
                
            }
        }
        .padding(.horizontal)
    
    }
}

#Preview {
    ListBookingView()
}


struct BookingRowView: View{
    
    var booking: BookingResponse
    //width screen
    var width = UIScreen.main.bounds.width
    //selected index slide
    @State private var selectedIndex: Int = 0
    var body: some View{
        VStack{
            //images slider and favorites
            
            ZStack(alignment: .top){
                //images slides
                TabView(selection: $selectedIndex){
                    ForEach(booking.placeImages.indices, id: \.self){ index in
                        KFImage(URL(string: booking.placeImages[index]))
                            .resizable()
                            .scaledToFill()
                            .frame(width: width, height: 350)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .tag(booking.placeImages[index])
                    }
                    
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .frame(height: 350)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                //indicator dot
                VStack{
                    Spacer()
                    HStack{
                        ForEach(0..<booking.placeImages.count, id: \.self){ index in
                            Circle().fill(index == selectedIndex ? .white : .gray)
                                .frame(width: 8, height: 8)
                        }
                    }
                    .padding(.bottom, 20)
                }
                //favorite icon
                HStack{
                    Button{
                        
                    }label: {
                        Text("Guest favorite")
                            .font(.subheadline)
                            .padding(.horizontal)
                            .padding(.vertical, 6)
                            .background(Color.white)
                            .foregroundStyle(.black)
                            .clipShape(Capsule())
                        
                    }
                    Spacer()
                    Image(systemName: booking.isFavorite ? "heart.fill" : "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 22, height: 22)
                        .foregroundStyle(booking.isFavorite ? Color.primaryColor : .black)
                }
                .padding()
                
            }
            //content info
            VStack(spacing: 0){
                HStack{
                    Text(booking.name)
                        .font(.headline)
                    Spacer()
                    HStack(spacing: 6){
                        Image(systemName: "start.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 15, height: 15)
                        Text(booking.rating)
                            .font(.headline)
                            .fontWeight(.regular)
                    }
                    
                }
                Text(booking.mileAway)
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(booking.date)
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(booking.price)
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .foregroundStyle(.black)
        }
        
    }
}
