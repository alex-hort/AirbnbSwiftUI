//
//  ContentInfoDetailView.swift
//  Airbnb
//
//  Created by Alexis Horteales Espinosa on 10/07/26.
//

import SwiftUI
import Kingfisher

struct ContentInfoDetailView: View {
    var booking: BookingResponse
    var body: some View {
        VStack(spacing: 20){
            //description
            DescriptionView(booking: booking)
            //rating and total raiting
            RatingAndTotalRaitingView(booking: booking)
            //host by
            HostByView(booking: booking)
            //host list
            HostListView()
            //sleep list
            Divider()
            SleepListView()
            Divider()
            //what offers
            OfferView()
            //review list
            ReviewList(booking: booking)
            Spacer()
        }
        .padding(.horizontal)
    }
}



struct DescriptionView: View {
    var booking: BookingResponse
    var body: some View {
        VStack(spacing: 12){
            Text(booking.description)
                .font(.title2)
                .fontWeight(.semibold)
            VStack(alignment: .leading, spacing: 0){
                Text("Entire cabin in \(booking.name)")
                    .font(.headline)
                Text(booking.capacity)
                    .font(.footnote)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct RatingAndTotalRaitingView: View {
    var booking: BookingResponse
    var body: some View {
        HStack{
            VStack(spacing: 2){
                Text(booking.rating)
                    .font(.headline)
                HStack(spacing: 2){
                    ForEach(1...5, id: \.self){ _ in
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 10, height: 10)
                        
                    }
                    
                }
            }
            Spacer()
            Rectangle()
                .fill(.black.opacity(0.2))
                .frame(width: 1, height: 30)
            Spacer()
            VStack(spacing: -5){
                Text("Guest")
                Text("Favorite")
                
            }
            .font(.headline)
            Spacer()
            Rectangle()
                .fill(.black.opacity(0.2))
                .frame(width: 1, height: 30)
            Spacer()
            VStack(spacing: -5){
                Text(booking.totalRating)
                    .font(.headline)
                Text("Reviews")
                    .font(.caption2)
                    .underline(true)
                
            }
            
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 12)
        .padding(.horizontal, 20)
        .overlay(
            RoundedRectangle(cornerRadius: 12).stroke(.black.opacity(0.2))
        )
        
    }
}

struct HostByView: View {
    var booking: BookingResponse
    var body: some View {
        VStack(spacing: 16){
            HStack(spacing: 16){
                KFImage(URL(string: detailRecord.hostImgUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 0){
                    Text("Hosted by \(detailRecord.hostBy)")
                        .font(.headline)
                    Text("Superhost - \(detailRecord.hostAgo)")
                        .font(.subheadline)
                }
                Spacer()
                
            }
            Divider()
        }
        
    }
}


struct HostListView: View{
    var hostList: [HostListResponse] = detailRecord.hostList
    var body: some View{
        VStack(spacing: 20){
            ForEach(hostList){ host in
                HStack(alignment: .top, spacing: 20){
                    Image(host.icon)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 26, height: 26)
                        .padding(.top, 4)
                    VStack(alignment: .leading, spacing: 0){
                        Text(host.name)
                            .font(.headline)
                        Text(host.description)
                            .font(.subheadline)
                    }
                    Spacer()
                }
            }
                
            }
        }
    }

struct SleepListView: View {
    var bedRoomDetails: [SleepListResponse] = detailRecord.bedRoomDetail
    var body: some View {
        VStack(spacing: 14){
            Text("Where you'll sleep")
                .font(.title2)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack(spacing: 12){
                ForEach(bedRoomDetails){ detail in
                    VStack(alignment: .leading){
                        KFImage(URL(string: detail.imgUrl))
                            .resizable()
                            .scaledToFill()
                            .frame(width: .infinity, height: 120)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        Text(detail.name)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.leading,10)
                        Text(detail.description)
                            .font(.subheadline)
                    }
                    
                }
            }
            
        }
    }
}


struct OfferView: View {
    var placeOffersList: [PlaceOfferResponse] = detailRecord.placeOfferList
    var body: some View {
        VStack(spacing: 14){
            Text("What this place offers")
                .font(.title2)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack(spacing: 24){
                ForEach(placeOffersList){ place in
                    HStack(spacing: 20){
                        Image(place.icon)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 26, height: 26)
                            .padding(.top, 4)
                        Text(place.name)
                            .font(.headline)
                            .fontWeight(.regular)
                        Spacer()
                    }
                    
                }
                
            }
        }
        
    }
}


struct ReviewList: View {
    var reviewList: [ReviewListResponse] = detailRecord.reviewList
    var booking: BookingResponse
    var body: some View {
        VStack{
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack(spacing: 20){
                    ForEach(reviewList){review in
                        ReviewRowList(review: review)
                        
                    }
                }
            }
            //button total review
            Button{
                
            }label: {
                Text("Show all \(booking.totalRating) reviews")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 12).stroke(.black.opacity(0.6)))
                
            }
            
        }
    }
}


struct ReviewRowList: View {
    var review: ReviewListResponse
    var body: some View {
        VStack{
            HStack{
                HStack(spacing: 2){
                    ForEach(1...5, id: \.self){ _ in
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 10, height: 10)
                        
                    }
                    
                }
                Text(review.dateAgo)
                    .font(.caption2)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(review.description)
                .font(.subheadline)
                .lineLimit(4)
            Text("Show more")
                .font(.subheadline)
                .fontWeight(.semibold)
                .underline(true)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack(spacing: 20){
                KFImage(URL(string: review.profileUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 0){
                    Text(review.name)
                        .font(.headline)
                    Text("5 years on Airbnb")
                        .font(.subheadline)
                }
                Spacer()
                
            }
        }
        .padding()
        .frame(width: 300)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.black.opacity(0.2), lineWidth: 1)
        )
        
        
    }
}

struct FloatingButtonView: View {
    var booking: BookingResponse
    var body: some View {
        HStack{
            Text(booking.price)
                .font(.title3)
                .fontWeight(.semibold)
                .underline(true)
                .foregroundStyle(.black.opacity(0.8))
                Spacer()
            Button{
                
            }label: {
                Text("Reserve")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 20)
                    .foregroundStyle(.white)
                    .background(Color.primaryColor)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            
        }
        .padding(.horizontal, 40)
        .frame(maxWidth: .infinity)
        .frame(height: 90)
        .overlay(
            RoundedRectangle(cornerRadius: 0).stroke(.gray.opacity(0.5))
        )
    }
}
