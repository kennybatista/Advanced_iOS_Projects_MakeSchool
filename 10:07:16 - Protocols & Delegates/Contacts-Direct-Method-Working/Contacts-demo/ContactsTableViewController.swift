//
//  ContactsTableViewController.swift
//  Contacts-demo
//
//  Created by Nikolas Burk on 15/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
  // This contacts is just used for table view representation
  var contacts: [Person] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  
  // MARK: - Table view data source
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return contacts.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
    cell.textLabel?.text = contacts[indexPath.row].name
    return cell
  }
  
    
    func saveName(name: String) {
        let person = Person(name: name)
        contacts.append(person)
        tableView.reloadData()
    }
  
  // MARK: Navigation
  
  @IBAction func cancel(segue: UIStoryboardSegue) {
    
  }
  
  @IBAction func save(segue: UIStoryboardSegue) {
    
  }
  
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddContactSegue" {
            let destinationController = segue.destination as! AddContactViewController
            destinationController.receiverContactTableViewController = self
        }
    }
  
}
