//
//  tab1.swift
//  App_4_10
//
//  Created by HaHieuUyen on 10/4/19.
//  Copyright © 2019 HaHieuUyen. All rights reserved.
//

import UIKit

class tab1: UIViewController {

    @IBOutlet weak var tb1: UITableView!
//    var item:[Banner] = [
//        Banner( IMG:#imageLiteral(resourceName: "IMG_9931"))]
//    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.tb1.delegate = self
//        self.tb1.dataSource = self

        
    }

}
//extension tab1:UITableViewDelegate, UITableViewDataSource{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "BannerCell") as! BannerCell
//        cell.bind(banner: item[indexPath.row])
//        return cell
//    }
//
//
//
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 50
//    }
//
//
//}
//struct Banner {
//    var IMG: UIImage
//}
