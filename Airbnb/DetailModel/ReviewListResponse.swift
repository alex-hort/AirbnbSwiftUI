//
//  ReviewListResponse.swift
//  Airbnb
//
//  Created by Alexis Horteales Espinosa on 10/07/26.
//

import Foundation

struct ReviewListResponse: Identifiable{
    var id = UUID()
    var name: String
    var profileUrl: String
    var description: String
    var dateAgo: String
}
