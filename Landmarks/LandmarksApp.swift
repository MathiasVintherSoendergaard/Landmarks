//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Mathias Vinther Søndergaard on 29/10/2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
