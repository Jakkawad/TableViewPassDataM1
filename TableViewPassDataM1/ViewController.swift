//
//  ViewController.swift
//  TableViewPassDataM1
//
//  Created by Jakkawad Chaiplee on 9/28/2559 BE.
//  Copyright © 2559 Jakkawad Chaiplee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var dataArray1 = [String]()
    var data1Selected:String!
    
    @IBOutlet weak var tableView:UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0") as? CustomTableViewCell
//        cell0?.dataArray = dataArray1
        return cell0!
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        guard let tableViewCell = cell as? CustomTableViewCell else { return }
        tableViewCell.setCollectionViewDataSourceDelegate(dataSourceDelegate: self, forRow: (indexPath as NSIndexPath).row)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataArray1 = ["Dog", "Ant", "Bird", "Pig"]
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Navigation
     
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailSegue" {
            print("DetailSegue")
            let detailViewController = segue.destination as! DetailViewController
            detailViewController.detailText = data1Selected
        } else {
            print("ErrorSegue")
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
     }
 

}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell0 = collectionView.dequeueReusableCell(withReuseIdentifier: "tableCell0", for: indexPath) as? CustomCollectionViewCell
        cell0?.lblText.text = dataArray1[indexPath.row]
        return cell0!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        data1Selected = dataArray1[indexPath.row]
        self.performSegue(withIdentifier: "DetailSegue", sender: self)
    }
}
