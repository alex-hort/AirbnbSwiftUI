//
//  HomeView.swift
//  Airbnb
//
//  Created by Alexis Horteales Espinosa on 10/07/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            NavigationStack{
                ZStack(alignment: .bottom){
                    ScrollView{
                        VStack(spacing: 24){
                            SearchView()
                            TabContentView()
                            ListBookingView()
                            
                        }
                        .padding(.vertical)
                    }
                    //floating button
                    Button{
                        
                    }label: {
                        HStack{
                            Text("Map")
                                .font(.headline)
                            Image(systemName: "map.fill")
                            
                            
                        }
                        .foregroundStyle(.white)
                        .frame(width: 120, height: 55)
                        .background(.black.opacity(0.9))
                        .clipShape(Capsule())
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .principal){
                        HStack(spacing: 12){
                            
                            Image(systemName: "play.tv")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 18, height: 18)
                            
                            Text("Replay welcome tour")
                                .font(.headline)
                                .underline(true)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
