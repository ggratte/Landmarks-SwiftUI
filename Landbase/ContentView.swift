//
//  ContentView.swift
//  Landbase
//
//  Created by Göran Gratte on 2024-02-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }

                Divider()


                Text("Joshua Tree National Park")
                    .font(.title2)
          
                Text("Descriptive text goes here")

            }
            .padding()
            Spacer()
        }

    }
}

#Preview {
    ContentView()
}
