//
//  CarViewController.swift
//  CarList
//
//  Created by YongJun Han on 2022/12/01.
//

import UIKit

class CarViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    var nameList = ["이상해씨","파이리","꼬부기"]
    var typeList = ["풀","불","물"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

    // UITableViewDataSource
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? listCell else {
            return UITableViewCell()
        }
        let img = UIImage(named: "\(nameList[indexPath.row]).png")
        let newWidth = 150
        let newHeight = 150
        let newBg = CGRect(x: 0, y: 0, width: newWidth, height: newHeight)
        UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
        img?.draw(in: newBg)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()?.withRenderingMode(.alwaysOriginal)
        UIGraphicsEndImageContext()
        
        cell.imgView.image = newImage
        cell.nameLabel.text = nameList[indexPath.row]
        cell.typeLabel.text = typeList[indexPath.row]
        return cell
    }
    
//    UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }

}

class listCell : UITableViewCell {
    @IBOutlet weak var imgView : UIImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var typeLabel : UILabel!
}
