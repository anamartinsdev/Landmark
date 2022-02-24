//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ana Carolina Martins Pessoa on 23/02/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) {
           landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
