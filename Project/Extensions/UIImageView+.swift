//
//  UIImageView+.swift
//  Project
//
//  Created by Emir Alkal on 30.04.2023.
//

import UIKit

extension UIImageView {
    convenience init(imageName: String, contentMode: ContentMode) {
        self.init()
        image = UIImage(named: imageName)
        self.contentMode = contentMode
    }
}
