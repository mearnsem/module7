//
//  WeekTableViewController.swift
//  TableViewGuidedProject
//
//  Created by Emily Mearns on 5/10/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

import UIKit

class WeekTableViewController: UITableViewController {
    
    let daysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return daysOfWeek.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("dayCell", forIndexPath: indexPath)

        cell.textLabel?.text = daysOfWeek[indexPath.row]

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row)
        print(daysOfWeek[indexPath.row])
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 75
    }

    
    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toDayDetail" {
            if let dayDetailVC = segue.destinationViewController as? DayDetailViewController {
                if let dayCell = sender as? UITableViewCell {
                    if let indexPath = tableView.indexPathForCell(dayCell) {
                        dayDetailVC.day = daysOfWeek[indexPath.row]
                    }
                }
            }
        }
    }
    
}
 
 
