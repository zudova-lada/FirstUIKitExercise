//
//  GradientView.swift
//  UIKitFirstExercise
//
//  Created by Лада Зудова on 01.03.2023.
//

import UIKit

final class GradientView: UIView {
    
    let gradientLayer = CAGradientLayer()
    
    override func layoutSubviews() {
        
        // resize your layers based on the view's new frame
        super.layoutSubviews()
        gradientLayer.frame = self.bounds
        let color1 = UIColor.white.cgColor
        let color2 = UIColor.red.cgColor
        
        gradientLayer.cornerRadius = layer.cornerRadius
        gradientLayer.colors = [color1, color2]
        gradientLayer.locations = [0.0, 0.8]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
