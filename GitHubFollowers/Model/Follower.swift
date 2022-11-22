//
//  Follower.swift
//  GitHubFollowers
//
//  Created by Cenk Bahadır Çark on 14.11.2022.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}
