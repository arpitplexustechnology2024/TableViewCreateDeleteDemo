//
//  MultipleTableViewVC.swift
//  TableViewCreateDeleteDemo
//
//  Created by Arpit iOS Dev. on 15/05/24.
//

import UIKit

class MultipleTableViewVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableView1: UITableView!
    
   var fruitsArr = ["Apple","Orange","Banana","Pinepal","Kiwi","Mengo","Apple","Orange","Banana","Pinepal","Kiwi","Mengo"]
   var foodArr = ["Burgur","Pizza","Oreo Cookies","French Fries","Potato Chip","Donuts","Burgur","Pizza","Oreo Cookies","French Fries","Potato Chip","Donuts"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView1.delegate = self
        self.tableView1.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count:Int?
               
               if tableView == self.tableView {
                   count = fruitsArr.count
               }
               
               if tableView == self.tableView1 {
                   count =  foodArr.count
               }
               
               return count!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
                if tableView == self.tableView {
                   let cell = tableView.dequeueReusableCell(withIdentifier: "MultipleTableViewCell1") as! MultipleTableViewCell1
                    cell.lblText1.text = fruitsArr[indexPath.row]
                    
                    return cell
                }
                
                if tableView == self.tableView1 {
                   let cell = tableView.dequeueReusableCell(withIdentifier: "MultipleTableViewCell2") as! MultipleTableViewCell2
                    cell.lblText2.text = foodArr[indexPath.row]
                    
                    return cell
                }
        
        return UITableViewCell()
    }
}
