//
//  DetailData.swift
//  Airbnb
//
//  Created by Alexis Horteales Espinosa on 10/07/26.
//

import Foundation

let detailRecord = DetailResponse(
    hostBy: "Ozlem",
    hostImgUrl: "https://a0.muscache.com/im/pictures/user/608b7b18-f017-45c5-a265-0f5201997939.jpg?im_w=240&im_format=avif",
    hostAgo: "5 years on Airbnb",
    bedRoomDetail: [
        SleepListResponse(
            imgUrl: "https://a0.muscache.com/im/pictures/miso/Hosting-802062343721369877/original/75789fba-de92-4a2c-8239-bdad76c7d025.jpeg?im_w=720&im_format=avif",
            name: "Bedroom 1",
            description: "1 king bed"
        ),
        SleepListResponse(
            imgUrl: "https://a0.muscache.com/im/pictures/miso/Hosting-1167561573047873167/original/0990e517-c47e-462a-83ad-eb43d557928c.jpeg?im_w=480&im_format=avif",
            name: "Bedroom 2",
            description: "1 queen bed"
        )
    ],
    hostList: [
        HostListResponse(
            name: "Dedicated workspace",
            description: "A common area with wifi that's well-suited for working.",
            icon: "desktopcomputer"
        ),
        HostListResponse(
            name: "Self check-in",
            description: "Check yourself in with the smartlock.",
            icon: "key.fill"
        ),
        HostListResponse(
            name: "Ozlem is a Superhost",
            description: "Superhosts are experienced, highly rated Hosts.",
            icon: "medal.fill"
        )
    ],
    placeOfferList: [
        PlaceOfferResponse(
            name: "Lock on bedroom door",
            icon: "lock.fill"
        ),
        PlaceOfferResponse(
            name: "Wifi",
            icon: "wifi"
        ),
        PlaceOfferResponse(
            name: "Free parking on premises",
            icon: "car.fill"
        ),
        PlaceOfferResponse(
            name: "Exterior security cameras on property",
            icon: "video.fill"
        )
    ],
    reviewList: [
        ReviewListResponse(
            name: "Hillary",
            profileUrl: "https://a0.muscache.com/im/pictures/user/923386a2-1a4d-4de7-86be-a3b98df0ce77.jpg?im_w=240&im_format=avif",
            description: "We loved Dreamtime! I booked the reservation on a whim based on the cute photos and it did not disappoint! We had never been to B...",
            dateAgo: "2 weeks ago"
        ),
        ReviewListResponse(
            name: "John",
            profileUrl: "https://a0.muscache.com/im/pictures/user/2af9eb62-cce3-48b0-a4e7-20e45c45b11d.jpg?im_w=240&im_format=avif",
            description: "Had a fantastic stay at the Cozy Cottage. The place was clean, well-maintained, and the neighborhood was peaceful. Highly recommend!",
            dateAgo: "1 month ago"
        ),
        ReviewListResponse(
            name: "Emma",
            profileUrl: "https://a0.muscache.com/im/pictures/user/90e35f30-47be-4888-9df4-9bc93b85ce13.jpg?im_w=240&im_format=avif",
            description: "The location was perfect, and the amenities were top-notch. The host was very responsive and helpful. Would definitely come back!",
            dateAgo: "3 weeks ago"
        ),
        ReviewListResponse(
            name: "Michael",
            profileUrl: "https://a0.muscache.com/im/pictures/user/696fb008-5f77-49a7-95bd-9e8da29ad58d.jpg?im_w=240&im_format=avif",
            description: "Great experience overall! The apartment was exactly as described, and it had everything we needed for our short stay.",
            dateAgo: "5 days ago"
        )
    ]
)
