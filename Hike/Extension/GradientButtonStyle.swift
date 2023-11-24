//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Adriancys Jesus Villegas Toro on 17/11/23.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background {
                //conditional statment with nill coalescing
                configuration.isPressed ? LinearGradient(
                    colors: [.customGrayMedium,
                             .customGrayLight
                             ],
                    startPoint: .top,
                    endPoint: .bottom)
                :
                LinearGradient(
                    colors: [.customGrayLight,
                             .customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom)
            }
            .cornerRadius(40)
    }
}
