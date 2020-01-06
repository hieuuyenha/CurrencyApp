//
//  BannerCell.swift
//  App_4_10
//
//  Created by HaHieuUyen on 10/7/19.
//  Copyright © 2019 HaHieuUyen. All rights reserved.
//

import UIKit

class BannerCell: UITableViewCell {

    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var IMGbn1: UIImageView!
    @IBOutlet weak var IMGbn2: UIImageView!
    @IBOutlet weak var IMGbn3: UIImageView!
    @IBOutlet weak var IMGbn4: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        IMGbn1.image = #imageLiteral(resourceName: "banner(3)")
        IMGbn2.image = #imageLiteral(resourceName: "banner(1)")
        IMGbn3.image = #imageLiteral(resourceName: "banner(2)")
        IMGbn4.image = #imageLiteral(resourceName: "banner(4)")
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
