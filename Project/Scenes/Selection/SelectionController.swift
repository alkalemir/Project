//
//  SelectionController.swift
//  Project
//
//  Created by Emir Alkal on 30.04.2023.
//

import UIKit

final class SelectionController: UIViewController {
    
    private let marsImageView = UIImageView(imageName: "mars", contentMode: .scaleAspectFit)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .primaryColor
        
    }
    
    private func setupViews() {
        view.addSubview(marsImageView)
        
        marsImageView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.trailing.equalToSuperview().offset(10)
            make.width.equalTo(view.frame.size.width * 0.7)
        }
    }
}
