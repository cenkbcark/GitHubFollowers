//
//  GFRepoItemVC.swift
//  GitHubFollowers
//
//  Created by Cenk Bahadır Çark on 20.11.2022.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "Github Profile")
    }
    override func actionButtonTapped() {
        delegate.didTapGithubProfile(for: user)
    }
}

