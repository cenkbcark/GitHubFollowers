//
//  GFFollowerItemVC.swift
//  GitHubFollowers
//
//  Created by Cenk Bahadır Çark on 20.11.2022.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
    override func actionButtonTapped() {
        guard user.followers != 0 else {
            presentGFAlertOnMainThread(title: "No Followers", message: "This user has no followers. What a shame 😞", buttonTitle: "OK")
            return
        }
        delegate.didTapGetFollowers(for: user)
        dismiss(animated: true)
    }
}
