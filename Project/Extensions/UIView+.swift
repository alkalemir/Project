//
//  UIView+.swift
//  Project
//
//  Created by Emir Alkal on 30.04.2023.
//

import UIKit

extension UIView {
    convenience init(
        backgroundColor: UIColor? = nil,
        cornerRadius: CGFloat? = nil
    ) {
        self.init()
        self.backgroundColor = backgroundColor
        if let cornerRadius {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach {
            addSubview($0)
        }
    }
}
