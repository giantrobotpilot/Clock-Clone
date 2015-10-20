//
//  WorldClockViewController.swift
//  Clock Clone
//
//  Created by Drew on 10/18/15.
//  Copyright © 2015 Drew. All rights reserved.
//

import UIKit

class WorldClockViewController: UITableViewController {
    
    let cityDataSource = CityDataSource()
    var clockViewMode = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UITableView data source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("WorldClockCell") as! WorldClockTableViewCell
        let city = self.cityDataSource.cities[indexPath.row]
        
        cell.cityLabel.text = city.city
        
        switch indexPath.row {
        case 0:
            cell.timeDifferenceLabel.text = "Today"
        case 1:
            cell.timeDifferenceLabel.text = "Tomorrow, 17 hours ahead"
        case 2:
            cell.timeDifferenceLabel.text = "Today, 2 hours behind"
        default:
            cell.cityLabel.text = ""
            cell.timeDifferenceLabel.text = ""
        }
        
        if self.clockViewMode {
            cell.timeLabel.hidden = true
            cell.meridianLabel.hidden = true
            cell.clockImageView.hidden = false
        }
        else {
            cell.timeLabel.hidden = false
            cell.meridianLabel.hidden = false
            cell.clockImageView.hidden = true
        }

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.clockViewMode = !self.clockViewMode
        tableView.reloadData()
    }

}
