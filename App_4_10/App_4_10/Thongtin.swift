//
//  Thongtin.swift
//  App_4_10
//
//  Created by HaHieuUyen on 10/9/19.
//  Copyright © 2019 HaHieuUyen. All rights reserved.
//

import UIKit

class Thongtin: UITableViewCell {
    
    @IBOutlet weak var LBtitle: UILabel!
    
    @IBOutlet weak var LBten: UILabel!
    @IBOutlet weak var LBsdt: UILabel!
    @IBOutlet weak var LBdiachi: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        LBten.text = "Ha Hieu Uyen"
        LBsdt.text = "01124233"
        LBdiachi.text = "106 nguyen hong, binh thanh, ho chi minh"
        
    }
    @IBAction func BTsuaTT(_ sender: Any) {
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

     
    }

}
