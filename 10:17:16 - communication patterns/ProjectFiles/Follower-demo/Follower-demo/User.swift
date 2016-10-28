//
//  User.swift
//  Follower-demo
//
//  Created by Nikolas Burk on 15/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import Foundation

class User {

    let name: String
    var isFollowing: Bool
    init(name: String, isFollowing: Bool) {
        self.name = name
        self.isFollowing = isFollowing
    }

}
