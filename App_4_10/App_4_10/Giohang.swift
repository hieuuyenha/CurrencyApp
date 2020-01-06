//
//  Giohang.swift
//  App_4_10
//
//  Created by HaHieuUyen on 10/9/19.
//  Copyright © 2019 HaHieuUyen. All rights reserved.
//

import UIKit

class Giohang: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

}
extension Giohang:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SoluongTableViewCell", for: indexPath) as! SoluongTableViewCell
            cell.lbSoluong.text = "Chua biet lam"
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "Thongtin", for: indexPath) as! Thongtin
            return cell
       default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "Danhsach", for: indexPath) as! Danhsach
            cell.textLabel?.text = "Dach sach"
            return cell
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
}
