//
//  CarViewController.swift
//  CarList
//
//  Created by YongJun Han on 2022/12/01.
//

import UIKit

class CarViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    // UITableViewDataSource
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
//    UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }

}
