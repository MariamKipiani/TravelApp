//
//  HeaderView.swift
//  TravelApp
//
//  Created by user on 12/15/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image(systemName: "globe.europe.africa.fill")
                    .font(.title)
                    .foregroundStyle(Color("textColor"))
                
                Spacer()
                
                Image("profilePic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
            }
            
            Text("Start enjoying your")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.black)
            +
            Text(" vacation")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(Color("textColor"))
            +
            Text(" with us!")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.black)
        }
        .padding()
        .background(Color("headerBackground"))
    }
}

#Preview {
    HeaderView()
        .previewLayout(.sizeThatFits)
        .background(Color("backgroundColor"))
}
