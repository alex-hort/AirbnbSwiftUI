//
//  SearchView.swift
//  Airbnb
//
//  Created by Alexis Horteales Espinosa on 10/07/26.
//

import SwiftUI

struct SearchView: View {
    var body: some View {

        //search
        HStack(spacing:20){
            HStack{
                Image(systemName: "magnifyingglass")
                TextField("Start your search", text: .constant(""))
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(.white)
            .clipShape(Capsule())
            .shadow(color: .gray.opacity(0.3), radius: 10)
            
            //filter icon
            Button{
                
            }label: {
                ZStack{
                    Circle()
                        .fill(.clear)
                        .frame(width: 45, height: 45)
                        .overlay(Circle().stroke(.gray.opacity(0.6), lineWidth: 1))
                    Image(systemName: "slider.horizontal.3")
                    
                }
                .foregroundStyle(.black)
            }
        }
        .padding(.horizontal)
    }
}
