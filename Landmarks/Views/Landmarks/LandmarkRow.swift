//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Mathias Vinther Søndergaard on 29/10/2022.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if(landmark.isFavorite) {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .padding()
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        // landmarks is defined in ModelData.swift, but outside of any
        // class or struct, and is thus static, which is why this call works
        // ... I think
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
            LandmarkRow(landmark: landmarks[2])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
