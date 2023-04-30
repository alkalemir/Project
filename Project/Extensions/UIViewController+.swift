//
//  UIViewController+.swift
//  Project
//
//  Created by Emir Alkal on 30.04.2023.
//

import UIKit

extension UIViewController {
    func navigate(to viewController: UIViewController) {
        viewController.modalPresentationStyle = .fullScreen
        viewController.modalTransitionStyle = .crossDissolve
        self.present(viewController, animated: true)
    }
}
