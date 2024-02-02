//
//  LandmarkList.swift
//  Landbase
//
//  Created by Göran Gratte on 2024-02-02.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks, id: \.id) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
