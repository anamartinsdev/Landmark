//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ana Carolina Martins Pessoa on 23/02/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
        List(landmarks) { landmark in
            NavigationLink{
                LandmarkDetail(landmark: landmark)
            } label: {
                LandmarkRow(landmark: landmark)
            }
        }
        .navigationTitle("Landmarks")
        }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
}
