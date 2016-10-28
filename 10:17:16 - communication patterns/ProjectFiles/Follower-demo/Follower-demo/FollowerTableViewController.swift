//
//  FollowerTableViewController.swift
//  Follower-demo
//
//  Created by Nikolas Burk on 15/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

// MARK: 1 - This is the first step, we implement the delegate protocol in our class: FollowerTableViewDelegate
class FollowerTableViewController: UITableViewController, FollowerTableViewDelegate {
    
    // Our Data
    var users: [User] =  [
        User(name: "John", isFollowing: false),
        User(name: "Carl", isFollowing: false),
        User(name: "Michael", isFollowing: false),
        User(name: "Scott", isFollowing: false),
        User(name: "Jenny", isFollowing: false),
        User(name: "Marina", isFollowing: false),
        User(name: "Sarah", isFollowing: false),
        User(name: "Wendy", isFollowing: false),
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Following"
    }
    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FollowerCell") as! FollowerCell
        cell.user = users[indexPath.row]
//        cell.receiverTableView = self
        
        // MARK: 3 - here we assign the object of our class to being the delegate of the one that needs the delegate object. "Hey Cell, I will be your delegate ( receiver ) 
        cell.delegate = self
        
        
        return cell
    }
    
    
    // MARK: 2 - Here we make our class conform to the delegate protocol by implementing the required functions
    func sendUser(user: User){
        // we print so that we could confirm that we're receiving the user
        print(user)
        // here we loop through the users array of objects in our class, and we specify that if the object that we press is the one in that index we update it
        for userObject in users {
            // if the name in the current loop index is the same to the name that we are receiving, then do this
            if userObject.name == user.name {
                if userObject.isFollowing == false {
                    userObject.isFollowing = true
                } else if userObject.isFollowing == true {
                    userObject.isFollowing = false
                }
            }
        }
        
        //the reloadData basically recalls the datasource methods and upatates the view ( cellforrowatindexpath )
        self.tableView.reloadData()
    }
    
}
