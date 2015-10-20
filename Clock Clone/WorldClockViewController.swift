//
//  WorldClockViewController.swift
//  Clock Clone
//
//  Created by Drew on 10/18/15.
//  Copyright © 2015 Drew. All rights reserved.
//

import UIKit

class WorldClockViewController: UITableViewController {

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
        switch indexPath.row {
        case 0:
            cell.cityLabel.text = "Denver"
            cell.timeDifferenceLabel.text = "Today"
        case 1:
            cell.cityLabel.text = "Sydney"
            cell.timeDifferenceLabel.text = "Tomorrow, 17 hours ahead"
        case 2:
            cell.cityLabel.text = "Anchorage"
            cell.timeDifferenceLabel.text = "Today, 2 hours behind"
        default:
            cell.cityLabel.text = ""
            cell.timeDifferenceLabel.text = ""
        }
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
