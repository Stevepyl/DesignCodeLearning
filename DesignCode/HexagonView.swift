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
            context.draw(Text("DesignCode"), at: CGPoint(x: 50, y: 20))
            context.draw(Image("Blob 1"), in: CGRect(x: 0, y: 0, width: 200, height: 200))
            context.draw(Image(systemName: "hexagon.fill"), in: CGRect(x: 100, y: 100, width: 200, height: 200))
        }
    }
}

struct HexagonView_Previews: PreviewProvider {
    static var previews: some View {
        HexagonView()
    }
}
