//
//  FriendsTableViewCell.swift
//  HobbyTracker
//
//  Created by Aaron Cleveland on 12/12/19.
//  Copyright © 2019 Aaron Cleveland. All rights reserved.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hometownLabel: UILabel!
    @IBOutlet weak var hobbyCountLabel: UILabel!
    
    var friend: Friend? {
        // property observer - calls the code in the  { } whenever the value of friend is set
        didSet {
            updateViews()
        }
    }
    
    // there is nothing special about this function name, it's just a common name we'll use.
    func updateViews() {
        nameLabel.text = friend?.name
        hometownLabel.text = friend?.hometown
        hobbyCountLabel.text = "\(friend?.hobbies.count ?? 0) hobbies"
    }
}
