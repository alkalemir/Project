//
//  UILabel+.swift
//  Project
//
//  Created by Emir Alkal on 30.04.2023.
//

import UIKit

extension UILabel {
    convenience init(
        text: String,
        textColor: UIColor? = nil,
        font: UIFont? = nil
    ) {
        self.init()
        self.text = text
        self.textColor = textColor
        self.font = font
    }
}
