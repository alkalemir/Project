//
//  ViewController.swift
//  Project
//
//  Created by Emir Alkal on 30.04.2023.
//

import UIKit
import SnapKit

final class MenuController: UIViewController {
    
    // MARK: - Views
    
    private let containerView = UIView(
        backgroundColor: .secondaryColor,
        cornerRadius: 8
    )
    
    private let titleLabel = UILabel(
        text: "Main Menu",
        textColor: .ternaryColor,
        font: .euclidMedium(with: 32))
    
    private let newGameButton = UIButton(
        title: "New Game",
        titleColor: .ternaryColor,
        font: .euclidRegular(with: 24),
        cornerRadius: 10,
        borderColor: .ternaryColor
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .primaryColor
        setupViews()
        setupButton()
    }
    
    private func setupButton() {
        var configuration = UIButton.Configuration.borderless()
        configuration.title = "New Game"
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
        newGameButton.configuration = configuration
        newGameButton.addTarget(self, action: #selector(handleNewGame), for: .touchUpInside)
    }
    
    private func setupViews() {
        view.addSubview(containerView)

        containerView.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leading).offset(75)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(60)
            make.trailing.equalTo(view.snp.trailing).offset(-75)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-60)
        }
        
        containerView.addSubviews(titleLabel, newGameButton)
        
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(containerView.snp.top).offset(65)
        }
        
        newGameButton.snp.makeConstraints { make in
            make.leading.equalTo(titleLabel.snp.leading)
            make.top.equalTo(titleLabel.snp.bottom).offset(75)
            make.height.equalTo(40)
        }
    }
    
    @objc private func handleNewGame() {
        navigate(to: SelectionController())
    }
}

