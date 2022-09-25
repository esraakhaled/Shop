//
//  ShopViewController+CollectionDelegate.swift
//  Shop
//
//  Created by Esraa Khaled   on 11/08/2022.
//

import UIKit

extension ShopViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sweetsImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShopImagesCell", for: indexPath) as! ShopImagesCell
        cell.sweetsImg.image = UIImage(named: sweetsImages[indexPath.row])
        return cell
    }
}


extension ShopViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}
