//
//  AnimationEnum.swift
//  AnimationApp
//
//  Created by dzmitry on 17.12.22.
//

import Foundation

// MARK: - AnimationEnum

enum AnimationEnum: String {
    case shake
    case pop
    case morph
    case squeeze
    case wobble
    case swing
    case flipX
    case flipY
    case fall
    case squeezeLeft
    case squeezeRight
    case squeezeDown
    case squeezeUp
    case slideLeft
    case slideRight
    case slideDown
    case slideUp
    case fadeIn
    case fadeOut
    case fadeInLeft
    case fadeInRight
    case fadeInDown
    case fadeInUp
    case zoomIn
    case zoomOut
    case flash
}

enum Curve: String {
    case spring
    case linear
    case easeIn
    case easeOut
    case easeInOut
}
