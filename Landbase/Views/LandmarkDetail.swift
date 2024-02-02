//
//  LandmarkDetail.swift
//  Landbase
//
//  Created by Göran Gratte on 2024-02-02.
//

import SwiftUI

struct LandmarkDetail: View {

    var landmark: Landmark

    var body: some View {
        ScrollView {
            MapView(cordinate: landmark.locationCoordinate)
                .frame(height: 300)

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }

                Divider()


                Text("About \(landmark.name)")
                    .font(.title2)

                Text(landmark.description)

            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)

    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
