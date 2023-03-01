//
//  ViewController.swift
//  UIKitFirstExercise
//
//  Created by Лада Зудова on 01.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    private lazy var square: GradientView = {
        let view = GradientView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.shadowColor = UIColor.green.cgColor
        view.layer.shadowOffset = CGSize(width: 5, height: 5)
        view.layer.shadowOpacity = 1
        view.layer.shadowRadius = 2
        view.layer.cornerRadius = 10
        view.backgroundColor = .purple
        
        let gradientLayer:CAGradientLayer = CAGradientLayer()
        gradientLayer.frame.size = self.view.frame.size
        gradientLayer.colors =
        [UIColor.white.cgColor,UIColor.red.withAlphaComponent(1).cgColor]
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        makeConstraints()
    }

    private func makeConstraints() {
        view.addSubview(square)
        NSLayoutConstraint.activate([
            square.heightAnchor.constraint(equalToConstant: 100),
            square.widthAnchor.constraint(equalToConstant: 100),
            square.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            square.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

