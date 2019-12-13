//
//  AddFriendViewController.swift
//  HobbyTracker
//
//  Created by Aaron Cleveland on 12/12/19.
//  Copyright © 2019 Aaron Cleveland. All rights reserved.
//

import UIKit

protocol AddFriendDelegate {
    // we will pass the friend that was created into this function.
    func friendWasCreated(friend: Person)
}

class AddFriendViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var hometownTextField: UITextField!
    @IBOutlet weak var hobby1TextField: UITextField!
    @IBOutlet weak var hobby2TextField: UITextField!
    @IBOutlet weak var hobby3TextField: UITextField!
    
    
    // anything that conforms to the AddFriendDelegate protocol can be set as the delegate of this VC.
    var delegate: AddFriendDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func cancelTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveTapped(_ sender: Any) {
        // this is combining a guard-let with a gaurd statement.
        // if you wanted to, you could have them be seperate if this looks weird.
        
        guard let name = nameTextField.text,
            let hometown = hometownTextField.text,
            !name.isEmpty,
            !hometown.isEmpty else { return }
        
        var friend = Person(name: name, hometown: hometown, hobbies: [])
        
        if let hobby1 = hobby1TextField.text,
            !hobby1.isEmpty {
            friend.hobbies.append(hobby1)
        }
        
        if let hobby2 = hobby2TextField.text,
            !hobby2.isEmpty {
            friend.hobbies.append(hobby2)
        }
        
        if let hobby2 = hobby2TextField.text,
            !hobby2.isEmpty {
            friend.hobbies.append(hobby2)
        }
        
        // tell teh delegate that a friend was created
        delegate?.friendWasCreated(friend: friend)
        dismiss(animated: true, completion: nil)
    }

}

extension AddFriendViewController: UITextFieldDelegate {
    
}
