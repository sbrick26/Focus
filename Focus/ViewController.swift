//
//  ViewController.swift
//  Focus
//
//  Created by Swayam Barik on 6/29/16.
//  Copyright © 2016 Swayam Barik. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var yo: UILabel!
    var testBool = false
    var cellTapped:Bool = true
    var currentRow = 0;

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view,

    }
    
    

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
//    {
//        if indexPath.row == 0
//        {
//            tableView.dequeueReusableHeaderFooterViewWithIdentifier("picker")?.hidden = true
//        }
//        tableView.reloadData()
//    }
    
}

extension ViewController: UITableViewDataSource
{
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // 1
        
        if testBool {
            return 3
        } else {
            return 2
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        // 2
        if testBool{
            if indexPath.row == 0
            {
                let cell = tableView.dequeueReusableCellWithIdentifier("startTime")!
                return cell
            }
            else if indexPath.row == 1
            {
                let cell = tableView.dequeueReusableCellWithIdentifier("picker")!
                return cell
            }
            else
            {
                let cell = tableView.dequeueReusableCellWithIdentifier("endTime")!
                return cell
            }
        } else {
            if indexPath.row == 0
            {
                let cell = tableView.dequeueReusableCellWithIdentifier("startTime")!
                return cell
            }
            else
            {
                let cell = tableView.dequeueReusableCellWithIdentifier("endTime")!
                return cell
            }

        }
    }
}

extension ViewController: UITableViewDelegate
{

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
        if indexPath.row == 0
        {
        
        testBool = !testBool
        tableView.reloadData()
            
        }
        
//        let selectedRowIndex = indexPath
//        currentRow = selectedRowIndex.row
//        
//        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("picker", forIndexPath: indexPath)
//        
//        cell.hidden = true
//        
//        tableView.reloadData()
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        if indexPath.row == 0
        {
            if cellTapped == false
            {
                cellTapped = true
                return 141
            }
            
            else
            {
                cellTapped = false
                return 70
            }
        }
        return indexPath.row == 1 ? 100 : 150
    }
}




