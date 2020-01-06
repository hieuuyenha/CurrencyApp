//
//  CatogoriesCell.swift
//  App_4_10
//
//  Created by HaHieuUyen on 10/4/19.
//  Copyright © 2019 HaHieuUyen. All rights reserved.
//

import UIKit

class CatogoriesCell: UITableViewCell {

    @IBOutlet weak var CatoryCV: UICollectionView!
    var item = ["Thời trang", "Điện thoại","Lap top"]
    override func awakeFromNib() {
        super.awakeFromNib()
        self.CatoryCV.dataSource = self
        self.CatoryCV.delegate = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        

        // Configure the view for the selected state
    }
    
  

}
extension CatogoriesCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return item.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CatoriesCVCell", for: indexPath) as! CatoriesCVCell
        cell.LBcatory.text = item[indexPath.item]
        return cell
        
    }
    
    
    
}

