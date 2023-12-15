//
//  TravelCardView.swift
//  TravelApp
//
//  Created by user on 12/15/23.
//

import SwiftUI

struct TravelCardView: View {
    var imageName: String
    var destinationName: String
    var countryName: String
    var rating: Double

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 230, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 1)
                )

            HStack {
                VStack(alignment: .leading, spacing: 2) {
                    Text(destinationName)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)

                    Text(countryName)
                        .font(.caption)
                        .fontWeight(.light)
                        .foregroundColor(.secondary)
                }

                Spacer()

                Label(
                    title: { Text(String(format: "%.1f", rating)) },
                    icon: { Image(systemName: "star.fill") }
                )
                .padding(8)
                .background(Color.yellow)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .foregroundColor(.white)
                .font(.caption)
            }
            .padding(.horizontal)
        }
        .padding()
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .shadow(radius: 5)
    }
}

#Preview {
    TravelCardView(imageName: "main", destinationName: "Mount Bromo", countryName: "Indonesia", rating: 4.6)
}

