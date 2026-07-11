//
//  TabContentView.swift
//  Airbnb
//
//  Created by Alexis Horteales Espinosa on 10/07/26.
//

import SwiftUI
import Kingfisher

struct TabContentView: View {
    //list tabs
    var tabs:[TabResponse] = tabData
    //state index
    @State private var selectedIndex = 1
    //animation
    @Namespace private var animation
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHStack (spacing: 0){
                ForEach(tabs.indices, id: \.self){ index in
                    Button{
                        withAnimation{
                            selectedIndex = index
                        }
                    }label: {
                        VStack(spacing: 14){
                            //icon and text
                            VStack(spacing: 6){
                                KFImage(URL(string: tabs[index].imageUrl))
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 26, height: 26)
                                Text(tabs[index].title)
                                    .font(.subheadline)
                                    .fontWeight(selectedIndex ==  index ? .semibold : .regular)
                                    .foregroundStyle(.black)
                            }
                            
                            //line vertical
                            
                            ZStack{
                                Rectangle()
                                    .fill(.gray.opacity(0.2))
                                    .frame(height: 1.5)
                                if selectedIndex == index{
                                    Rectangle()
                                        .fill(Color.black)
                                        .frame(height: 1.5)
                                        .matchedGeometryEffect(id: "underline", in: animation)
                                }
                            }
                            
                        }
                    }
                }
                .frame(width: 100)
                
            }
            .padding(.horizontal)
            
            
        }
    }
}

