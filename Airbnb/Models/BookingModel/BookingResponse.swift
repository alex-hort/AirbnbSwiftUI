//
//  BookingResponse.swift
//  Airbnb
//
//  Created by Alexis Horteales Espinosa on 10/07/26.
//

import Foundation

struct BookingResponse: Identifiable{
    var id = UUID()
    var placeImages: [String]
    var name:String
    var description: String
    var capacity: String
    var rating: String
    var totalRating: String
    var mileAway: String
    var date: String
    var price: String
    var isFavorite: Bool
}

