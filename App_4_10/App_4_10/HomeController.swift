//
//  HomeController.swift
//  App_4_10
//
//  Created by HaHieuUyen on 10/7/19.
//  Copyright © 2019 HaHieuUyen. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
extension HomeController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier:"BannerCell" , for: indexPath) as! BannerCell
                    return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CatoriesCell", for: indexPath) as! CatoriesCell
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductCell
//            cell.didGoToDetai = {(prod) in
//                let sb:UIStoryboard = UIStoryboard.init(name: "Detail", bundle: nil)
//                let ProductDetailVC = sb.instantiateViewController(withIdentifier: "ProductDetail") as! ProductDetail
//                ProductDetailVC.prod = prod
//                ProductDetailVC.hidesBottomBarWhenPushed = true
//                self.navigationController?.pushViewController(ProductDetailVC, animated: true)
//                
//            }
            return cell
        }
    }
    

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 300
        case 1:
            return 100
        default:
            return 2000
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
}
