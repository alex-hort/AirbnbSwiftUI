//
//  HostListResponse.swift
//  Airbnb
//
//  Created by Alexis Horteales Espinosa on 10/07/26.
//

import Foundation

struct HostListResponse:Identifiable{
    var id = UUID()
    var name: String
    var description: String
    var icon: String
}
