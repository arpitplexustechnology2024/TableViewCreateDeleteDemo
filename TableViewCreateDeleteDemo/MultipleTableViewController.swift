//
//  MultipleTableViewController.swift
//  TableViewCreateDeleteDemo
//
//  Created by Arpit iOS Dev. on 15/05/24.
//

import UIKit

class MultipleTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var SegmentController: UISegmentedControl!
    
    var suratData:[SuratModel] = []
    var mumbaiData:[MumbaiModel] = []
    var bangloreData:[BangloreModel] = []
    var puneData:[PuneModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.TableView.delegate = self
        self.TableView.dataSource = self
        
        arrData()
    }
    
    func arrData() {
        
        suratData = [
            SuratModel(city: "City:- Surat", img: #imageLiteral(resourceName: "Navratri.jpeg"), title: "Navratri"),
            SuratModel(city: "City:- Surat", img: #imageLiteral(resourceName: "Rann Utsav.jpeg"), title: "Rann Utsav"),
            SuratModel(city: "City:- Surat", img: #imageLiteral(resourceName: "Shamlaji Melo.jpeg"), title: "Shamlaji Melo"),
            SuratModel(city: "City:- Surat", img: #imageLiteral(resourceName: "Makar Sankranti.jpeg"), title: "International Kite Festival"),
            SuratModel(city: "City:- Surat", img: #imageLiteral(resourceName: "Bhavnath Fair.jpeg"), title: "Bhavnath mahadev fair"),
            SuratModel(city: "City:- Surat", img: #imageLiteral(resourceName: "Rath Yatra.png"), title: "Rath Yatra"),
            SuratModel(city: "City:- Surat", img: #imageLiteral(resourceName: "Janmashtami.jpeg"), title: "Janmashtami"),
            SuratModel(city: "City:- Surat", img: #imageLiteral(resourceName: "Holi.jpeg"), title: "Holi"),
            SuratModel(city: "City:- Surat", img: #imageLiteral(resourceName: "Ganesh Chaturthi.jpeg"), title: "Ganesh Chaturthi"),
            SuratModel(city: "City:- Surat", img: #imageLiteral(resourceName: "Diwali.jpeg"), title: "Diwali"),
        ]
        
        mumbaiData = [
            MumbaiModel(city: "City:- Mumbai", img: #imageLiteral(resourceName: "Banganga.jpeg"), title: "Banganga"),
            MumbaiModel(city: "City:- Mumbai", img: #imageLiteral(resourceName: "elephanta Festival.jpeg"), title: "Elephanta Festival"),
            MumbaiModel(city: "City:- Mumbai", img: #imageLiteral(resourceName: "Gudi Padwa.jpeg"), title: "Gudi padva"),
            MumbaiModel(city: "City:- Mumbai", img: #imageLiteral(resourceName: "Ganesh Chaturthi.jpeg"), title: "Ganesh Chaturthi"),
            MumbaiModel(city: "City:- Mumbai", img: #imageLiteral(resourceName: "Diwali.jpeg"), title: "Diwali"),
            MumbaiModel(city: "City:- Mumbai", img: #imageLiteral(resourceName: "Janmashtami.jpeg"), title: "Janmashtami"),
            MumbaiModel(city: "City:- Mumbai", img: #imageLiteral(resourceName: "Holi.jpeg"), title: "Holi"),
        ]
        
        bangloreData = [
            BangloreModel(city: "City:- Banglore", img: #imageLiteral(resourceName: "Karaga Festival.jpeg"), title: "karaga Festival"),
            BangloreModel(city: "City:- Banglore", img: #imageLiteral(resourceName: "Holi.jpeg"), title: "Holi"),
            BangloreModel(city: "City:- Banglore", img: #imageLiteral(resourceName: "Makar Sankranti.jpeg"), title: "Makar Sankranti"),
            BangloreModel(city: "City:- Banglore", img: #imageLiteral(resourceName: "Ugadi Festival.jpeg"), title: "Ugadi Festival"),
            BangloreModel(city: "City:- Banglore", img: #imageLiteral(resourceName: "varamahalakshmi festival.jpeg"), title: "Varamahalakshmi Festival"),
        ]
        
        puneData = [
            PuneModel(city: "City:- Pune", img: #imageLiteral(resourceName: "Vasant Panchami.jpeg"), title: "Vasant Panchami"),
            PuneModel(city: "City:- Pune", img: #imageLiteral(resourceName: "Holi.jpeg"), title: "Holi"),
            PuneModel(city: "City:- Pune", img: #imageLiteral(resourceName: "Makar Sankranti.jpeg"), title: "Makar Sankranti"),
            PuneModel(city: "City:- Pune", img: #imageLiteral(resourceName: "Gudi Padwa.jpeg"), title: "Gudi Padwa"),
            PuneModel(city: "City:- Pune", img: #imageLiteral(resourceName: "Nag Panchami.jpeg"), title: "Nag Panchami"),
        ]
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var value = 0
        
        switch SegmentController.selectedSegmentIndex {
        case 0:
            value = suratData.count
            break
        case 1:
            value = mumbaiData.count
            break
        case 2:
            value = bangloreData.count
            break
        case 3:
            value = puneData.count
            break
        default:
            break
        }
        
        return value
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MultipleTableViewCell") as! MultipleTableViewCell
        
        switch SegmentController.selectedSegmentIndex {
        case 0:
            cell.lblTitle.text = suratData[indexPath.row].title
            cell.lblCity.text = suratData[indexPath.row].city
            cell.img.image = suratData[indexPath.row].img
            break
        case 1:
            cell.lblTitle.text = mumbaiData[indexPath.row].title
            cell.lblCity.text = mumbaiData[indexPath.row].city
            cell.img.image = mumbaiData[indexPath.row].img
            break
        case 2:
            cell.lblTitle.text = bangloreData[indexPath.row].title
            cell.lblCity.text = bangloreData[indexPath.row].city
            cell.img.image = bangloreData[indexPath.row].img
            break
        case 3:
            cell.lblTitle.text = puneData[indexPath.row].title
            cell.lblCity.text = puneData[indexPath.row].city
            cell.img.image = puneData[indexPath.row].img
            break
        default:
            break
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 143
    }
    
    @IBAction func SegmentController(_ sender: UISegmentedControl) {
        self.TableView.reloadData()
    }
    
    

}
