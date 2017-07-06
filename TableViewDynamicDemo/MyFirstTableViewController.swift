//
//  MyFirstTableViewController.swift
//  TableViewDynamicDemo
//
//  Created by Eliseo_Martinez on 7/4/17.
//  Copyright © 2017 berufs. All rights reserved.
//

import UIKit

class MyFirstTableViewController: UITableViewController {

    //linkeando controles de la vista
    @IBOutlet var myTable: UITableView!
    
    let textCellIdentifier = "myCell"
    
    var tableData = [String]()
    var tableValues = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTable.delegate = self
        myTable.dataSource = self

        let path = Bundle.main.path(forResource: "MyList", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        tableData = dict!.object(forKey: "Version Code") as! [String]
        tableValues = dict!.object(forKey: "OSX") as! [String]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "navigateToDetail"
        {
            let s1 = segue.destination as! DetailsViewController
            
            let blogIndex = tableView.indexPathForSelectedRow?.row
            
            s1.passDetails = tableValues[blogIndex!]
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath) as UITableViewCell
        
        let row = indexPath.row
        cell.textLabel?.text = tableData[row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}
