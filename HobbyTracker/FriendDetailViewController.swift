//
//  FriendDetailViewController.swift
//  HobbyTracker
//
//  Created by Aaron Cleveland on 12/12/19.
//  Copyright © 2019 Aaron Cleveland. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hometownLabel: UILabel!
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var hobbiesTextField: UITextView!
    
    var friend: Friend? {
        didSet {
           updateViews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }

    func updateViews() {
        
        //make sure the view controller has time to load and setup outlets. if not stop the function
        guard isViewLoaded else { return }
        
        guard let friend = friend else { return }
        
        nameLabel.text = friend.name
        hometownLabel.text = friend.hometown
        
        // this is the string that we will give to the text view text.
        var hobbyText = ""
        for hobby in friend.hobbies {
            hobbyText += "- \(hobby)\n"
        }
        
        hobbiesTextField.text = hobbyText
    }
}
