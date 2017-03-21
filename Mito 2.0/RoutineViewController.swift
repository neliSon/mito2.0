//
//  RoutineViewController.swift
//  Mito 2.0
//
//  Created by Nelson Chow on 2017-03-20.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

import UIKit

class RoutineViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.frame = CGRect(x: 0, y: 50, width: 320, height: 200)
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(RoutineTableViewCell.self, forCellReuseIdentifier: "RoutineCell")
        
        self.view.addSubview(tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - TableViewController DataSource
    func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:RoutineTableViewCell = tableView.dequeueReusableCell(withIdentifier: "RoutineCell", for: indexPath) as! RoutineTableViewCell
        // modify cell
        
        return cell
    }
}

