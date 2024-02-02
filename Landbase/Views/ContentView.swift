//
//  ContentView.swift
//  Landbase
//
//  Created by Göran Gratte on 2024-02-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
        }

    }


#Preview {
    ContentView()
        .environment(ModelData())
}
