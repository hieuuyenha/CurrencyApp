//
//  ProductCVCell.swift
//  App_4_10
//
//  Created by HaHieuUyen on 10/7/19.
//  Copyright © 2019 HaHieuUyen. All rights reserved.
//

import UIKit

class ProductCVCell: UICollectionViewCell {
    @IBOutlet weak var IMGproduct: UIImageView!
    @IBOutlet weak var LbnameProduct: UILabel!
    func bind(product:Product){
        IMGproduct.image = product.img
        LbnameProduct.text = product.name
    }
}
