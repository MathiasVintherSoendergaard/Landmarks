//
//  ContentView.swift
//  Landmarks
//
//  Created by Mathias Vinther Søndergaard on 29/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
