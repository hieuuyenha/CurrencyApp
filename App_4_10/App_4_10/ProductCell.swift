//
//  ProductCell.swift
//  App_4_10
//
//  Created by HaHieuUyen on 10/7/19.
//  Copyright © 2019 HaHieuUyen. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {

    @IBOutlet weak var ColletionView: UICollectionView!{
        didSet {
            self.ColletionView.delegate = self
            self.ColletionView.dataSource = self
        }
    }
    var arr:[Product] = [
        Product(img: #imageLiteral(resourceName: "pinkcouple"), name: "Couple Pink"),
        Product(img: #imageLiteral(resourceName: "Babydoll"), name: "Baby Doll"),
        Product(img: #imageLiteral(resourceName: "Halilay"), name: "Lili dress"),
        Product(img: #imageLiteral(resourceName: "Dovest"), name: "Vest pasel"),
    ]
    var arrID:[ProductID] = [
        ProductID(id: 0),
        ProductID(id: 1),
        ProductID(id: 2),
        ProductID(id: 3),
        ProductID(id: 4)
    
    ]
    //closure
    var didGoToDetai:((_ product :ProductID)-> Void)! = nil
    

    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
extension ProductCell:UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCVCell", for: indexPath) as! ProductCVCell
        cell.bind(product: arr[indexPath.row])
//        
//        if self.didGoToDetai != nil{
//            self.didGoToDetai = {(prod) in
//                let sb:UIStoryboard = UIStoryboard.init(name: "Detail", bundle: nil)
//                let ProductDetailVC = sb.instantiateViewController(withIdentifier: "ProductDetail") as! ProductDetail
//                ProductDetailVC.prod = prod
//                ProductDetailVC.hidesBottomBarWhenPushed = true
//                self.navigationController?.pushViewController(ProductDetailVC, animated: true)
//            
//        }

        
        return cell
    }
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        //go to detail
//        if self.didGoToDetai != nil{
//            self.didGoToDetai
//        let sb:UIStoryboard = UIStoryboard.init(name: "Detail", bundle: nil)
//        let ProductDetailVC = sb.instantiateViewController(withIdentifier: "ProductDetail") as! ProductDetail
//
//
}
    
        
        

    
    

        
struct Product{
    var img: UIImage
    var name: String
}

struct ProductID {
    var id: Int
}
