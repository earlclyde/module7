//
//  weekTableTableViewController.swift
//  TableViewGuidedProject
//
//  Created by Karl Pfister on 5/10/16.
//  Copyright © 2016 Karl Pfister. All rights reserved.
//

import UIKit

class weekTableTableViewController: UITableViewController {
    
    let daysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    // Command a control i will indent all
    // MARK: - Table view data source and delegate
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return daysOfWeek.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("dayCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = daysOfWeek[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(indexPath)
        print(indexPath.row)
        print(daysOfWeek[indexPath.row])
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "toDayDetail" {
            if let DayDetailViewController = segue.destinationViewController as? DayDetailViewController{
                if let dayCell = sender as? UITableViewCell {
                    if let indexPath = tableView.indexPathForCell(dayCell) {
                        DayDetailViewController.day = daysOfWeek[indexPath.row]
                    }
                }
            }
        }
        /* */
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
}
