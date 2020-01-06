//
//  ProductsCVCell.swift
//  App_4_10
//
//  Created by HaHieuUyen on 10/7/19.
//  Copyright © 2019 HaHieuUyen. All rights reserved.
//

import UIKit

class ProductsCVCell: UICollectionViewCell {
    
    @IBOutlet weak var LBdelail: UILabel!
    @IBOutlet weak var LBnameProduct: UILabel!
    @IBOutlet weak var IMGproducts: UIImageView!
    
    func bind(product: Product) {
        IMGproducts.image = product.img
        LBnameProduct.text = product.ten
        LBdelail.text = product.chitiet
    }
}


