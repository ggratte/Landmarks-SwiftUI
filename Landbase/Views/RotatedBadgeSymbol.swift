//
//  RotatedBadgeSymbol.swift
//  Landbase
//
//  Created by Göran Gratte on 2024-02-03.
//

import SwiftUI


struct RotatedBadgeSymbol: View {
    let angle: Angle

    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}


#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
