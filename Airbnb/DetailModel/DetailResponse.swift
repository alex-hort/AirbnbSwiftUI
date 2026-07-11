//
//  DetailResponse.swift
//  Airbnb
//
//  Created by Alexis Horteales Espinosa on 10/07/26.
//

import Foundation

struct DetailResponse: Identifiable{
    var id = UUID()
    var hostBy: String
    var hostImgUrl: String
    var hostAgo: String
    var bedRoomDetail:[SleepListResponse]
    var hostList: [HostListResponse]
    var placeOfferList: [PlaceOfferResponse]
    var reviewList: [ReviewListResponse]
}
