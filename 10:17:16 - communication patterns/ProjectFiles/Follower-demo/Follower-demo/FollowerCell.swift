//
//  FollowerCell.swift
//  Follower-demo
//
//  Created by Nikolas Burk on 15/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

//Step one, create the protocol, make sure that the name ends in "delegate"
protocol FollowerTableViewDelegate {
    // here we add the method inside of the protocol
    func sendUser(user: User)
}

class FollowerCell: UITableViewCell {
    
    // this is the receiver
//    var receiverTableView: FollowerTableViewController! = nil
    var delegate: FollowerTableViewDelegate?
    
    // these are the properties
    let isFollowingString = "You are following this user"
    let isNotFollowingString = "You are not following this user"
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var followInfoLabel: UILabel!
    @IBOutlet weak var followButton: FollowButton!
    
    var user: User! {
        didSet {
            setUIForCurrentFollowingState()
            
        }
    }
    
    @IBAction func followButtonPressed(_ sender: AnyObject) {
        print(#function)
//        receiverTableView.acceptUsers(user: user)
        setUIForCurrentFollowingState()
        
        delegate?.sendUser(user: user)
        
        
    }
    
    func setUIForCurrentFollowingState() {
        nameLabel.text = user.name
        followInfoLabel.text = user.isFollowing ? isFollowingString : isNotFollowingString
        followButton.followState = user.isFollowing ? .isFollowing : .isNotFollowing
    }
    
}



