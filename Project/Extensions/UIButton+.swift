//
//  UIButton+.swift
//  Project
//
//  Created by Emir Alkal on 30.04.2023.
//

import UIKit

extension UIButton {
    convenience init(title: String, with insets: NSDirectionalEdgeInsets) {
        var configuration = UIButton.Configuration.borderless()
        configuration.title = title
        configuration.contentInsets = insets
        
        self.init(type: .system)
        self.configuration = configuration
    }
    
    convenience init(
        title: String,
        titleColor: UIColor? = nil,
        font: UIFont? = nil,
        cornerRadius: CGFloat? = nil,
        borderColor: UIColor? = nil,
        contentInsets: NSDirectionalEdgeInsets? = nil
    ) {
        self.init(type: .system)
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        titleLabel?.font = font
        layer.borderColor = borderColor?.cgColor
        
        if let cornerRadius {
            layer.cornerRadius = cornerRadius
            layer.borderWidth = 1
        }
    }
}
