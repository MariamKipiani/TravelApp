//
//  TravelApp.swift
//  TravelApp
//
//  Created by user on 12/15/23.
//

import SwiftUI

@main
struct TravelApp: App {
    var viewModel = TravelAppViewModel()
    
    var body: some Scene {
        WindowGroup {
            TravelAppMainView()
                .environment(viewModel)
        }
    }
}
