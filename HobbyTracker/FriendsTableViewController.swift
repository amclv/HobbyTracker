//
//  FriendsTableViewController.swift
//  HobbyTracker
//
//  Created by Aaron Cleveland on 12/12/19.
//  Copyright © 2019 Aaron Cleveland. All rights reserved.
//

import UIKit

class FriendsTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var friends: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension FriendsTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    // the questions or a request for information are functions that want you to return something
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    // what information should be in each cell?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendsTableViewCell else { fatalError("The cell is not a FriendTableViewCell") }
        
        let friend = friends[indexPath.row]
        
        // this would trigger the didSet so we don't need to call cell.updateViews() afterwards
        cell.friend = friend
        
        // just return the cell
        return cell
    }
}
