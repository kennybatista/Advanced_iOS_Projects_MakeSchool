//
//  AddContactViewController.swift
//  Contacts-demo
//
//  Created by Nikolas Burk on 15/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

//protocol sendAndReceiveNameDelegate {
//    func sendAndReceiveNameMethod(name: Person)
//}

class AddContactViewController: UIViewController {
    
//    var delegate: sendAndReceiveNameDelegate?
    
    var receiverContactTableViewController: ContactsTableViewController! //this is set to "destinationController.receiverContactTableViewController = self" on the ContactsTableViewController, it mean that they're both linked so that we don't have more than one controller and cause crashes when it's nil
  
   
  @IBOutlet weak var nameTextField: UITextField!
    
    
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
//    delegate?.sendAndReceiveNameMethod(name: nameFromTextField)
    
    
  }
    @IBAction func savePressed(_ sender: UIButton) {
         let nameFromTextField = nameTextField.text
        receiverContactTableViewController.saveName(name: nameFromTextField!)
    }
  
}
