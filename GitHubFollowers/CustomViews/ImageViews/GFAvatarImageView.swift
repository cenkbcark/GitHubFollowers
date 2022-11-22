//
//  GFAvatarImageView.swift
//  GitHubFollowers
//
//  Created by Cenk Bahadır Çark on 17.11.2022.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    let placeHolderImage = Images.placeholder
    let cache = NetworkManager.shared.cache

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeHolderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
}
