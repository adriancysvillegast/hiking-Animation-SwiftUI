//
//  CustomCircleView.swift
//  Hike
//
//  Created by Adriancys Jesus Villegas Toro on 17/11/23.
//

import SwiftUI

struct CustomCircleView: View {
    
    // MARK: - Properties
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .customIndigoMedium,
                            .customSalmonLight],
                        startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing)
                )
                .onAppear(perform: {
                    
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        self.isAnimateGradient.toggle()
                    }
                    
                })
            MotionAnimationView()
        }
        .frame(width: 256, height: 256)
        
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
