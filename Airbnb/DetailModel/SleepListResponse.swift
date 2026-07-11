//
//  SleepListResponse.swift
//  Airbnb
//
//  Created by Alexis Horteales Espinosa on 10/07/26.
//

import Foundation

struct SleepListResponse: Identifiable{
    var id = UUID()
    var imgUrl: String
    var name: String
    var description: String
}
