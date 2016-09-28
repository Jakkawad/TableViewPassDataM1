//
//  DetailViewController.swift
//  TableViewPassDataM1
//
//  Created by Jakkawad Chaiplee on 9/28/2559 BE.
//  Copyright © 2559 Jakkawad Chaiplee. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var detailText:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("detailText: \(detailText)")
        self.title = detailText
        // Do any additional setup after loading the view.
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
