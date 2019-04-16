//
//  CGContext+CGImage.swift
//  EABlurView
//
//  Created by Meniny on 2017/08/17.
//  Copyright © 2017 Bushtit Lab. All rights reserved.
//

extension CGContext {
    static func imageContext(with quality: CaptureQuality, rect: CGRect, opaque: Bool) -> CGContext? {
        UIGraphicsBeginImageContextWithOptions(rect.size, opaque, quality.imageScale)
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }

        context.translateBy(x: -rect.origin.x, y: -rect.origin.y)
        context.interpolationQuality = quality.interpolationQuality

        return context
    }

    func makeImage(with blendColor: UIColor?, blendMode: CGBlendMode, size: CGSize) -> CGImage? {
        if let color = blendColor {
            setFillColor(color.cgColor)
            setBlendMode(blendMode)
            fill(CGRect(origin: .zero, size: size))
        }

        return makeImage()
    }
}
