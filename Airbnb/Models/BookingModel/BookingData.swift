//
//  BookingData.swift
//  Airbnb
//
//  Created by Alexis Horteales Espinosa on 10/07/26.
//



import Foundation


let bookinsData: [BookingResponse] = [

    // 1 — Resort tropical con albercas (serie de resorts de playa)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1566073771259-6a8506099945?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1540541338287-41700207dee6?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?w=720&auto=format&q=80"
        ],
        name: "Grand Ocean Resort",
        description: "Luxury Beach Resort",
        capacity: "4 Guests",
        rating: "4.9",
        totalRating: "2,184",
        mileAway: "0.5 mi away",
        date: "Jul 18 - Jul 22",
        price: "$320",
        isFavorite: false
    ),

    // 2 — Cabañas de montaña (todas estilo bosque/madera)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1449158743715-0a90ebb6d2d8?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1611048267451-e6ed903d4a38?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1510798831971-661eb04b3739?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1449156733864-dd5471bb7427?w=720&auto=format&q=80"
        ],
        name: "Forest Escape Cabin",
        description: "Mountain Cabin",
        capacity: "6 Guests",
        rating: "4.8",
        totalRating: "932",
        mileAway: "2.1 mi away",
        date: "Aug 2 - Aug 6",
        price: "$185",
        isFavorite: true
    ),

    // 3 — Villa blanca moderna (las 3 primeras son la MISMA propiedad)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1613490493576-7fde63acd811?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1613977257363-707ba9348227?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1613977257592-4871e5fcd7c4?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1587061949409-02df41d5e562?w=720&auto=format&q=80"
        ],
        name: "Sunset Villa",
        description: "Private Luxury Villa",
        capacity: "8 Guests",
        rating: "5.0",
        totalRating: "1,402",
        mileAway: "1.3 mi away",
        date: "Sep 4 - Sep 10",
        price: "$540",
        isFavorite: false
    ),

    // 4 — Loft urbano (interiores modernos de departamento)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1493809842364-78817add7ffb?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1484154218962-a197022b5858?w=720&auto=format&q=80"
        ],
        name: "Downtown Loft 22",
        description: "Modern City Apartment",
        capacity: "2 Guests",
        rating: "4.7",
        totalRating: "618",
        mileAway: "0.8 mi away",
        date: "Jul 25 - Jul 28",
        price: "$140",
        isFavorite: false
    ),

    // 5 — Hotel boutique de lujo (habitaciones de hotel de gama alta)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1611892440504-42a792e24d32?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1590490360182-c33d57733427?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1578683010236-d716f9a3f461?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1445019980597-93fa8acb246c?w=720&auto=format&q=80"
        ],
        name: "The Palm Hotel",
        description: "5-Star Boutique Hotel",
        capacity: "3 Guests",
        rating: "4.9",
        totalRating: "3,051",
        mileAway: "1.0 mi away",
        date: "Aug 12 - Aug 15",
        price: "$275",
        isFavorite: true
    ),

    // 6 — Casa frente al mar (exteriores y vistas al océano)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1499793983690-e29da59ef1c2?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1507089947368-19c1da9775ae?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?w=720&auto=format&q=80"
        ],
        name: "Seaside Cliff House",
        description: "Oceanfront Home",
        capacity: "6 Guests",
        rating: "4.8",
        totalRating: "1,127",
        mileAway: "3.4 mi away",
        date: "Jul 30 - Aug 3",
        price: "$410",
        isFavorite: false
    ),

    // 7 — Suites de hotel (habitaciones cálidas, mismo estilo)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1590073242678-70ee3fc28e8e?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1596394516093-501ba68a0ba6?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1568495248636-6432b97bd949?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1582719508461-905c673771fd?w=720&auto=format&q=80"
        ],
        name: "Aurora Suites",
        description: "Deluxe Hotel Suites",
        capacity: "2 Guests",
        rating: "4.6",
        totalRating: "845",
        mileAway: "0.6 mi away",
        date: "Sep 1 - Sep 4",
        price: "$198",
        isFavorite: false
    ),

    // 8 — Casa familiar (exterior + interiores de sala a juego)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1568605114967-8130f3a36994?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1580587771525-78b9dba3b914?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1598928506311-c55ded91a20c?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1598928636135-d146006ff4be?w=720&auto=format&q=80"
        ],
        name: "Maple Garden House",
        description: "Family Home with Garden",
        capacity: "7 Guests",
        rating: "4.7",
        totalRating: "512",
        mileAway: "4.2 mi away",
        date: "Aug 8 - Aug 14",
        price: "$230",
        isFavorite: false
    ),

    // 9 — Hotel elegante (recámaras oscuras/acogedoras)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1618773928121-c32242e63f39?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1615874959474-d609969a20ed?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1615880484746-a134be9a6ecf?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?w=720&auto=format&q=80"
        ],
        name: "Velvet Night Hotel",
        description: "Elegant Business Hotel",
        capacity: "2 Guests",
        rating: "4.5",
        totalRating: "1,764",
        mileAway: "0.9 mi away",
        date: "Jul 20 - Jul 23",
        price: "$165",
        isFavorite: true
    ),

    // 10 — Resort tropical sobre el agua (estilo Maldivas)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1584132967334-10e028bd69f7?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1544124499-58912cbddaad?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1559599189-fe84dea4eb79?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1533619239233-6280475a633a?w=720&auto=format&q=80"
        ],
        name: "Lagoon Paradise",
        description: "Tropical Overwater Resort",
        capacity: "2 Guests",
        rating: "5.0",
        totalRating: "2,930",
        mileAway: "6.8 mi away",
        date: "Oct 2 - Oct 8",
        price: "$690",
        isFavorite: false
    ),

    // 11 — Departamento en piso alto (las 3 primeras son la MISMA serie)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1560185007-c5ca9d2c014d?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1560185127-6ed189bf02f4?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1560184897-ae75f418493e?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?w=720&auto=format&q=80"
        ],
        name: "Skyline Residences",
        description: "High-Rise Apartment",
        capacity: "4 Guests",
        rating: "4.6",
        totalRating: "701",
        mileAway: "1.5 mi away",
        date: "Aug 18 - Aug 21",
        price: "$155",
        isFavorite: false
    ),

    // 12 — Gran hotel clásico (lujo tradicional)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1571896349842-33c89424de2d?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1564501049412-61c2a3083791?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1455587734955-081b22074882?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1444201983204-c43cbd584d93?w=720&auto=format&q=80"
        ],
        name: "Riviera Grand Palace",
        description: "Historic Luxury Hotel",
        capacity: "3 Guests",
        rating: "4.9",
        totalRating: "4,215",
        mileAway: "2.7 mi away",
        date: "Sep 12 - Sep 16",
        price: "$460",
        isFavorite: true
    ),

    // 13 — Estudio acogedor (interiores mini, tonos claros)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1507652313519-d4e9174996dd?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1549294413-26f195200c16?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?w=720&auto=format&q=80"
        ],
        name: "Cozy Corner Studio",
        description: "Charming Studio Apartment",
        capacity: "2 Guests",
        rating: "4.4",
        totalRating: "389",
        mileAway: "0.4 mi away",
        date: "Jul 15 - Jul 17",
        price: "$95",
        isFavorite: false
    ),

    // 14 — Casa de diseño moderna (MISMA serie de arquitectura)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1600566753086-00f18fb6b3ea?w=720&auto=format&q=80"
        ],
        name: "Casa Blanca Estate",
        description: "Modern Designer Home",
        capacity: "8 Guests",
        rating: "4.9",
        totalRating: "1,058",
        mileAway: "5.1 mi away",
        date: "Aug 22 - Aug 28",
        price: "$520",
        isFavorite: false
    ),

    // 15 — Lodge campestre (MISMA familia de series que el 14)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1600566753190-17f0baa2a6c3?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1600585154526-990dced4db0d?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1600047509807-ba8f99d2cdde?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1600210492486-724fe5c67fb0?w=720&auto=format&q=80"
        ],
        name: "Willow Creek Lodge",
        description: "Countryside Retreat",
        capacity: "5 Guests",
        rating: "4.7",
        totalRating: "644",
        mileAway: "7.3 mi away",
        date: "Sep 20 - Sep 24",
        price: "$210",
        isFavorite: true
    ),

    // 16 — Departamento luminoso (salas claras, mismo estilo escandinavo)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1554995207-c18c203602cb?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1524758631624-e2822e304c36?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1519710164239-da123dc03ef4?w=720&auto=format&q=80"
        ],
        name: "Urban Nest Apartment",
        description: "Bright City Apartment",
        capacity: "3 Guests",
        rating: "4.5",
        totalRating: "473",
        mileAway: "1.1 mi away",
        date: "Jul 27 - Jul 30",
        price: "$120",
        isFavorite: false
    ),

    // 17 — Hotel icónico de ciudad (fachadas y balcones urbanos)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1517840901100-8179e982acb7?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1519449556851-5720b33024e7?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1561501900-3701fa6a0864?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1595576508898-0ad5c879a061?w=720&auto=format&q=80"
        ],
        name: "The Metropolitan",
        description: "Iconic City Hotel",
        capacity: "2 Guests",
        rating: "4.8",
        totalRating: "2,507",
        mileAway: "0.7 mi away",
        date: "Aug 5 - Aug 8",
        price: "$290",
        isFavorite: false
    ),

    // 18 — Villa mediterránea (albercas y fachadas blancas)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1583608205776-bfd35f0d9f83?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1572120360610-d971b9d7767c?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1523217582562-09d0def993a6?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1598605272254-16f0c0ecdfa5?w=720&auto=format&q=80"
        ],
        name: "White Sands Villa",
        description: "Mediterranean Villa",
        capacity: "6 Guests",
        rating: "4.9",
        totalRating: "1,312",
        mileAway: "8.5 mi away",
        date: "Oct 10 - Oct 15",
        price: "$480",
        isFavorite: true
    ),

    // 19 — Flat frente al puerto (interiores con carácter, tonos oscuros)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1502005229762-cf1b2da7c5d6?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1520637836862-4d197d17c93a?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1549638441-b787d2e11f14?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1556020685-ae41abfc9365?w=720&auto=format&q=80"
        ],
        name: "Harbor View Flat",
        description: "Waterfront Apartment",
        capacity: "4 Guests",
        rating: "4.6",
        totalRating: "556",
        mileAway: "2.3 mi away",
        date: "Sep 6 - Sep 9",
        price: "$175",
        isFavorite: false
    ),

    // 20 — Hotel spa (alberca, tina y baños tipo wellness)
    BookingResponse(
        placeImages: [
            "https://images.unsplash.com/photo-1521783988139-89397d761dce?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1552321554-5fefe8c9ef14?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1584622650111-993a426fbf0a?w=720&auto=format&q=80",
            "https://images.unsplash.com/photo-1600121848594-d8644e57abab?w=720&auto=format&q=80"
        ],
        name: "Zen Garden Spa Hotel",
        description: "Wellness & Spa Resort",
        capacity: "2 Guests",
        rating: "4.8",
        totalRating: "1,894",
        mileAway: "3.9 mi away",
        date: "Aug 15 - Aug 19",
        price: "$350",
        isFavorite: false
    )
]
