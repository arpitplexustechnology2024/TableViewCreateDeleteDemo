//
//  ViewController.swift
//  TableViewCreateDeleteDemo
//
//  Created by Arpit iOS Dev. on 10/05/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, datapass {
   
   
    @IBOutlet weak var TableView: UITableView!
    
    var imagearr = ["aadi yogi","Delhi Gate","Golden Temple","kutumb minar","Lal killo","Rajasthan Run","statue of unity","Tajmahal","aadi yogi","Delhi Gate","Golden Temple","kutumb minar","Lal killo","Rajasthan Run","statue of unity","Tajmahal"]
    var namearr = ["Aadi yogi","Delhi Gate","Golden Temple","qutub minar","Lal qila","Rajasthan Ran","Statue of Unity","Tajmahal","Aadi yogi","Delhi Gate","Golden Temple","qutub minar","Lal qila","Rajasthan Ran","Statue of Unity","Tajmahal"]
    var descriptionarr = ["The Adiyogi Shiva Statue, is a towering 34-meter tall, 45-meter long, and 25-meter wide steel bust of Shiva, standing as a masterpiece in architectural magnificence. It is acknowledged by the Guinness World Records as the 'Largest Bust Sculpture' global.","Delhi Gate of Naman is the southern gate in the historic walled city of Delhi, or Shahjahanabad in 1638 AD. The gate links the New Delhi city with the old walled city of Delhi. It stands in the middle of the road, at the end of Netaji Subhash Chandra Road (or Netaji Subhash Marg), at the edge of Daryaganj.","The Golden temple is located in the holy city of the Sikhs, Amritsar. The Golden temple is famous for its full golden dome, it is one of the most sacred pilgrim spots for Sikhs. The Mandir is built on a 67-ft square of marble and is a two storied structure.","Qutub Minar is the world's tallest minaret made of brick. Its height is 72.5 meters and its construction was initiated by Qutub-Ud-Din Aibak. The minaret was built following the architecture of the Minaret of jam located in Afghanistan.","A symbol of the achievements of the Mughal Empire before British rule, the fortress is commonly seen as a national symbol of India, is a UNESCO World Heritage Site, and is among the country's most popular tourist destinations.","Rajasthan was inhabited long before 2500 BC and the Indus Valley Civilisation had its foundation here in north Rajasthan itself. The Bhil and the Mina tribes were the earliest dwellers of this area. Around 1400 BC the Aryans paid a visit and settled forever in the area.","It depicts Indian statesman and independence activist Vallabhbhai Patel (1875–1950), who was the first deputy prime minister and home minister of independent India and an adherent of Mahatma Gandhi. Patel is highly respected for playing a significant role in the political integration of India.","The Taj Mahal is an ivory-white marble mausoleum on the south bank of the Yamuna river in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor, Shah Jahan (reigned from 1628 to 1658), to house the tomb of his favourite wife, Mumtaz Mahal.","The Adiyogi Shiva Statue, is a towering 34-meter tall, 45-meter long, and 25-meter wide steel bust of Shiva, standing as a masterpiece in architectural magnificence. It is acknowledged by the Guinness World Records as the 'Largest Bust Sculpture' global.","Delhi Gate of Naman is the southern gate in the historic walled city of Delhi, or Shahjahanabad in 1638 AD. The gate links the New Delhi city with the old walled city of Delhi. It stands in the middle of the road, at the end of Netaji Subhash Chandra Road (or Netaji Subhash Marg), at the edge of Daryaganj.","The Golden temple is located in the holy city of the Sikhs, Amritsar. The Golden temple is famous for its full golden dome, it is one of the most sacred pilgrim spots for Sikhs. The Mandir is built on a 67-ft square of marble and is a two storied structure.","Qutub Minar is the world's tallest minaret made of brick. Its height is 72.5 meters and its construction was initiated by Qutub-Ud-Din Aibak. The minaret was built following the architecture of the Minaret of jam located in Afghanistan.","A symbol of the achievements of the Mughal Empire before British rule, the fortress is commonly seen as a national symbol of India, is a UNESCO World Heritage Site, and is among the country's most popular tourist destinations.","Rajasthan was inhabited long before 2500 BC and the Indus Valley Civilisation had its foundation here in north Rajasthan itself. The Bhil and the Mina tribes were the earliest dwellers of this area. Around 1400 BC the Aryans paid a visit and settled forever in the area.","It depicts Indian statesman and independence activist Vallabhbhai Patel (1875–1950), who was the first deputy prime minister and home minister of independent India and an adherent of Mahatma Gandhi. Patel is highly respected for playing a significant role in the political integration of India.","The Taj Mahal is an ivory-white marble mausoleum on the south bank of the Yamuna river in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor, Shah Jahan (reigned from 1628 to 1658), to house the tomb of his favourite wife, Mumtaz Mahal."]
    
    var titleData: String = ""
    var descriptionData: String = ""
    var rowNumber: Int = 0
    var index = IndexPath()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.TableView.delegate = self
        self.TableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagearr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell

        cell.ImageView.image = UIImage(named: imagearr[indexPath.row])
        cell.lblTitle.text = namearr[indexPath.row]
        cell.lblDescription.text = descriptionarr[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 143
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        
        vc.imageView = imagearr[indexPath.row]
        vc.titleName = namearr[indexPath.row]
        vc.descriptionn = descriptionarr[indexPath.row]
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            imagearr.remove(at: indexPath.row)
            namearr.remove(at: indexPath.row)
            descriptionarr.remove(at: indexPath.row)
            TableView.deleteRows(at: [indexPath], with: .fade)
          print("TableView Cell Delete")
        }
        
    }
    
    func tableView(_ tableView: UITableView,
                   leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
    {
        index = indexPath
        let modifyAction = UIContextualAction(style: .normal, title:  "Update", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popupVC") as! popupVC
            
            
            self.titleData = self.namearr[indexPath.row]
            self.descriptionData = self.descriptionarr[indexPath.row]
            
            self.rowNumber = indexPath.row
            
            vc.titlee = self.titleData
            vc.descriptionn = self.descriptionData
         
            vc.delegate = self
            
            vc.modalTransitionStyle = .crossDissolve
            vc.modalPresentationStyle = .overCurrentContext
            
            self.present(vc, animated: true)
            success(true)
            print("TableView Data Update")
        })
        modifyAction.backgroundColor = .gray
        
        return UISwipeActionsConfiguration(actions: [modifyAction])
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let rotationTranform = CATransform3DTranslate(CATransform3DIdentity, -500, 10, 0)
        cell.layer.transform = rotationTranform
        cell.alpha = 1.0
        
        UIView.animate(withDuration: 1.0) {
            cell.layer.transform = CATransform3DIdentity
            cell.alpha = 1.0
        }
    }
    
    func data(title: String, description: String) {
        if let cell = TableView.cellForRow(at: index) as? UITableViewCell {
            namearr[rowNumber] = title
            descriptionarr[rowNumber] = description
        }
       
       TableView.reloadData()
        
    }
    



}
