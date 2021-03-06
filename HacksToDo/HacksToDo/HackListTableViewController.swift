//
//  HackListTableViewController.swift
//  HacksToDo
//
//  Created by Krishnan Srinivasan on 4/17/15.
//  Copyright (c) 2015 HackYale. All rights reserved.
//

import UIKit

@objc(HackListTableViewController)class HackListTableViewController: UITableViewController {

    var hackIdeas: NSMutableArray = []
    
    @IBAction func unwindToList(segue: UIStoryboardSegue) {
        
        var source: AddToDoViewController = segue.sourceViewController as! AddToDoViewController
        
        if var item: HackIdea = source.hackIdea {
            self.hackIdeas.addObject(item)
            self.tableView.reloadData()
        }
        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.hackIdeas.count
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let CellIdentifier: NSString = "ListPrototypeCell"
        
        var cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier as String) as! UITableViewCell
        
        var hackIdea: HackIdea = self.hackIdeas.objectAtIndex(indexPath.row) as! HackIdea
        
        cell.textLabel!.text = hackIdea.itemName as String
        
        if hackIdea.completed {
            cell.accessoryType = .Checkmark
        }
        else {
            cell.accessoryType = .None
        }

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        var tappedItem: HackIdea = self.hackIdeas.objectAtIndex(indexPath.row) as! HackIdea
        tappedItem.completed = !tappedItem.completed
        
        tableView.reloadData()
        
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
