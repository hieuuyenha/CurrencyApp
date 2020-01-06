//
//  Acount.swift
//  App_4_10
//
//  Created by HaHieuUyen on 10/6/19.
//  Copyright © 2019 HaHieuUyen. All rights reserved.
//

import UIKit

class Acount: UIViewController {

    @IBOutlet weak var lbUsername: UILabel!
    @IBOutlet weak var btLogout: UIButton!
    @IBOutlet weak var IMGuser: UIImageView!
    

    @IBOutlet weak var tableView: UITableView!
    var arr:[More]=[
        More(chucnang: "Đơn hàng của tôi"),
        More(chucnang: "Tạo đấu gía"),
        More(chucnang: "Tạo sản phẩm"),
        More(chucnang: "Sản phẩm của tôi"),
        More(chucnang: "Lịch sử của tôi"),
        More(chucnang: "Điạ chỉ giao hàng"),
        More(chucnang: "Điều khoản dịch vụ"),
        More(chucnang: "Trung tâm trợ giúp"),
        More(chucnang: "Góp ý và đánh giá")
    
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        IMGuser.image = #imageLiteral(resourceName: "home")
        self.tableView.delegate = self
        self.tableView.dataSource = self

       
    }
    
  
    
    
    

  
}
extension Acount: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Morecell") as! Morecell
        cell.bind(more: arr[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
}
struct More{
    var chucnang: String
}
