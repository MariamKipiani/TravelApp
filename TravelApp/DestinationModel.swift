//
//  DestinationModel.swift
//  TravelApp
//
//  Created by user on 12/15/23.
//

import Foundation

struct DestinationsData: Codable {
    let destinations: [Destination]
}

struct Destination: Codable, Identifiable, Hashable {
    let id: Int
    let cityName: String
    let country: String
    let mainImage: String
    let description: String
    let generalImages: [String]
    let transport: [Transport]
    let mustSee: [MustSee]
    let hotels: [Hotel]
    let isTrending: Bool
    let rating: Double
}

struct Transport: Codable, Hashable {
    let image: String
    let name: String
    let description: String
    let price: String
}

struct MustSee: Codable, Hashable {
    let image: String
    let name: String
    let description: String
}

struct Hotel: Codable, Hashable {
    let image: String
    let name: String
    let description: String
}

let kutaisiExample = Destination(
    id: 2,
    cityName: "Kutaisi",
    country: "Georgia",
    mainImage: "kutaisi_main",
    description: "Kutaisi is a historic city in Georgia, known for its ancient landmarks, vibrant culture, and warm hospitality.",
    generalImages: ["kutaisi_image1", "kutaisi_image2", "kutaisi_image3"],
    transport: [
        Transport(image: "transport1", name: "Public Bus", description: "Affordable and convenient public bus system for city travel.", price: "$1 per trip"),
        Transport(image: "transport2", name: "Shared Taxis", description: "Experience Kutaisi with shared taxi services.", price: "$10 per ride")
    ],
    mustSee: [
        MustSee(image: "must_see1", name: "Bagrati Cathedral", description: "Historical cathedral offering breathtaking views of the city."),
        MustSee(image: "must_see2", name: "Prometheus Cave", description: "Explore the stunning underground world of Prometheus Cave.")
    ],
    hotels: [
        Hotel(image: "hotel1", name: "Luxury Resort", description: "Exclusive resort for a luxurious stay."),
        Hotel(image: "hotel2", name: "Kutaisi Inn", description: "Comfortable inn providing affordable accommodation for travelers.")
    ],
    isTrending: true,
    rating: 4.5
)

let updatedTravelTips = [
    "Pack according to the weather and activities",
    "Secure digital copies of important documents on your phone",
    "Learn a few local phrases for a more immersive experience",
    "Use anti-theft accessories for your belongings",
    "Savor the local cuisine and try new dishes",
    "Immerse yourself in local customs and traditions",
    "Stay hydrated and prioritize your well-being",
    "Plan your itinerary but allow for spontaneity",
    "Stay informed about local safety guidelines",
    "Embrace new experiences and enjoy your journey"
]
