//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ana Carolina Martins Pessoa on 23/02/22.
//

import SwiftUI
import MapKit

struct LandmarkList: View {
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
        List(filteredLandmarks) { landmark in
            NavigationLink{
                LandmarkDetail(landmark: landmark)
            } label: {
                LandmarkRow(landmark: landmark)
            }
        }
        .navigationTitle("Landmarks")
        }
}
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
            LandmarkList()
    }
}

