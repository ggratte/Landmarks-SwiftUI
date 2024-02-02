//
//  LandmarkList.swift
//  Landbase
//
//  Created by Göran Gratte on 2024-02-02.
//

import SwiftUI

struct LandmarkList: View {

    @State private var showFavoritesOnly = false

    var filteredLandmarks: [Landmark] {
            landmarks.filter { landmark in
                (!showFavoritesOnly || landmark.isFavorite)
            }
        }

    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                                    Text("Favorites only")
                                }

                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }

                }

            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")

        } detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
