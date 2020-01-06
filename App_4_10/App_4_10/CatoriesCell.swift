//
//  CatoriesCell.swift
//  App_4_10
//
//  Created by HaHieuUyen on 10/7/19.
//  Copyright © 2019 HaHieuUyen. All rights reserved.
//

import UIKit

class CatoriesCell: UITableViewCell {

    @IBOutlet weak var colectionView: UICollectionView!{
        didSet{
            self.colectionView.dataSource = self
            self.colectionView.delegate = self
        }
    }
    var arr = ["Váy", "Áo","Vest","Dress"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension CatoriesCell:UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = colectionView.dequeueReusableCell(withReuseIdentifier: "CatoryCVcell", for: indexPath) as! CatoryCVcell
        cell.Lbcatory.text = arr[indexPath.item]
        return cell
    }
    
    
}
