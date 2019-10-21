//
//  GradientExtension.swift
//  gradientPractice
//
//  Created by Javier Porras jr on 10/21/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import UIKit

extension UIView {
    func setGradient(color1: UIColor, color2: UIColor, pan: Pan = Pan.top){
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds //will take up the entire bounds of whatever it is called on.
        gradientLayer.colors = [color1.cgColor, color2.cgColor]
        //gradientLayer.locations = [0.0, 1.0] //commented for default meet in the middle.
        gradientLayer.startPoint = pan.direction.startPoint
        gradientLayer.endPoint = pan.direction.endPoint
        layer.insertSublayer(gradientLayer, at: 0)
    }
}

struct Direction {
    let startPoint: CGPoint
    let endPoint: CGPoint
}

enum Pan {
    case right
    case left
    case bottom
    case top
    case topLeftToBottomRight
    case topRightToBottomLeft
    case BottomLeftToTopRight
}
extension Pan{
    var direction: Direction{
        switch self{
        case .right:
            return Direction(startPoint: CGPoint(x: 0.0, y: 0.5), endPoint: CGPoint(x: 1.0, y: 0.5))
        case .left:
            return Direction(startPoint: CGPoint(x: 1.0, y: 0.5), endPoint: CGPoint(x: 0.0, y: 0.5))
        case .bottom:
            return Direction(startPoint: CGPoint(x: 0.5, y: 0.0), endPoint: CGPoint(x: 0.5, y: 1.0))
        case .top:
            return Direction(startPoint: CGPoint(x: 0.5, y: 1.0), endPoint: CGPoint(x: 0.5, y: 0.0))
        case .topLeftToBottomRight:
            return Direction(startPoint: CGPoint(x: 0.0, y: 0.0), endPoint: CGPoint(x: 1.0, y: 1.0))
        case .topRightToBottomLeft:
            return Direction(startPoint: CGPoint(x: 1.0, y: 0.0), endPoint: CGPoint(x: 0.0, y: 1.0))
        case .BottomLeftToTopRight:
            return Direction(startPoint: CGPoint(x: 0.0, y: 1.0), endPoint: CGPoint(x: 1.0, y: 0.0))
        }
    }
}

