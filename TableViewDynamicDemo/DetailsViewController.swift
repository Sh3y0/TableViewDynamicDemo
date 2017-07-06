//
//  DetailsViewController.swift
//  TableViewDynamicDemo
//
//  Created by Eliseo_Martinez on 7/4/17.
//  Copyright © 2017 berufs. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    //cibectuing controllers
    var passDetails:String?
    
    @IBOutlet weak var lblDetail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let name = passDetails {
            
            lblDetail.text=name
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
