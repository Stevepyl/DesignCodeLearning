//
//  BlobView.swift
//  DesignCode
//
//  Created by SteveLiu on 2023/1/5.
//

import SwiftUI

struct BlobView: View {
    var body: some View {
        TimelineView(.animation) { timeLine in
            
            let now = timeLine.date.timeIntervalSinceReferenceDate
            let angle = cos(Angle.degrees(now.remainder(dividingBy: 3) * 60).radians)
            let angle2 = cos(Angle.degrees(now.remainder(dividingBy: 6) * 10).radians)
            // 使用 cos 是因为我们需要角度连续变化，不产生跳变
            // 控制速度
            // Text("Value of now is: \(now)")
            // Text("Value of now is: \(angle)")
            Canvas { context, size in
                context.fill(path(in: CGRect(x: 0, y: 0, width: size.width, height: size.height),
                                  angle: angle,
                                  angle2: angle2),
                             with: .linearGradient(Gradient(colors: [.pink, .blue]),
                                                   startPoint: CGPoint(x: 0, y: 0),
                                                   endPoint: CGPoint(x: 400, y: 414)))
            }
            .frame(width: 400, height: 414)
        }
    }
    
    func path(in rect: CGRect, angle: Double, angle2: Double) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.9923*width,
                              y: 0.42593*height))
        path.addCurve(to: CGPoint(x: 0.6355*width*angle2, y: height),
                      control1: CGPoint(x: 0.92554*width*angle2, y: 0.77749*height*angle2),
                      control2: CGPoint(x: 0.91864*width*angle2, y: height))
        
        path.addCurve(to: CGPoint(x: 0.08995*width, y: 0.60171*height),
                      control1: CGPoint(x: 0.35237*width*angle, y: height),
                      control2: CGPoint(x: 0.2695*width, y: 0.77304*height))
        
        path.addCurve(to: CGPoint(x: 0.34086*width, y: 0.06324*height*angle),
                      control1: CGPoint(x: -0.0896*width, y: 0.43038*height),
                      control2: CGPoint(x: 0.00248*width, y: 0.23012*height*angle))
        
        path.addCurve(to: CGPoint(x: 0.9923*width, y: 0.42593*height),
                      control1: CGPoint(x: 0.67924*width, y: -0.10364*height*angle),
                      control2: CGPoint(x: 1.05906*width, y: 0.07436*height*angle2))
        path.closeSubpath()
        return path
    }
}

struct BlobView_Previews: PreviewProvider {
    static var previews: some View {
        BlobView()
    }
}
