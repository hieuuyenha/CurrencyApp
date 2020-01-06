//
//  Morecell.swift
//  App_4_10
//
//  Created by HaHieuUyen on 10/6/19.
//  Copyright © 2019 HaHieuUyen. All rights reserved.
//

import UIKit

class Morecell: UITableViewCell {

    @IBOutlet weak var lbMore: UILabel!
    @IBOutlet weak var bt: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func bind(more:More){
        lbMore.text = more.chucnang
    }

}
