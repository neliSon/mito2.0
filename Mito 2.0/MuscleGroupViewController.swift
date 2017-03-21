//
//  RoutineViewController.swift
//  Mito 2.0
//
//  Created by Nelson Chow on 2017-03-20.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

import UIKit

class MuscleGroupViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView = UITableView()
    
    let numberOfGroups = 3  // temp.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set up table view.
        tableView.frame = self.view.frame
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isScrollEnabled = false
        tableView.register(MuscleGroupTableViewCell.self, forCellReuseIdentifier: "MuscleGroupCell")
        
        // set table view row height as 1/3 of the table view minus the tab bar height.
        tableView.rowHeight = (tableView.frame.height - 40) / CGFloat(numberOfGroups)
        
        self.view.addSubview(tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - TableViewController DataSource
    func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfGroups   // temp.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let muscleGroupNames = ["Back", "Legs", "Chest"]    // temp.
        
        var cell:MuscleGroupTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MuscleGroupCell", for: indexPath) as! MuscleGroupTableViewCell
        // TODO: modify cell
        cell.textLabel?.text = muscleGroupNames[indexPath.row]
        
        return cell
    }
}

