//
//  HexagonView.swift
//  DesignCode
//
//  Created by SteveLiu on 2022/9/27.
//

import SwiftUI

struct HexagonView: View {
    var body: some View {
        Canvas{ context, size in
            // 使用Canvas API可以高效地创建可交互的动画，同时保证性能
            context.draw(
                Text("DesignCode")
                    .font(.largeTitle),
                at: CGPoint(x: 50, y: 20))
            context.fill(
                Path(ellipseIn: CGRect(x: 0, y: 0, width: 100, height: 100)),
                with: .color(.blue))
            context.draw(
                Image("Blob 1"),
                in: CGRect(x: 0, y: 0, width: 200, height: 200))
            context.draw(
                Image(systemName: "hexagon.fill"),
                in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        }
        .frame(width: 200, height: 212)
        .foregroundStyle(.linearGradient(colors: [.pink, .blue],
                                         startPoint: .topLeading,
                                         endPoint: .bottomTrailing))
    }
}

struct HexagonView_Previews: PreviewProvider {
    static var previews: some View {
        HexagonView()
    }
}
