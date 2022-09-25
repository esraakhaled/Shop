//
//  ShopViewController+Delegate.swift
//  Shop
//
//  Created by Esraa Khaled   on 11/08/2022.
//
import UIKit

extension ShopViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShopCell", for: indexPath) as! ShopCell
        cell.shopImg.image = UIImage(named: tradeImages[indexPath.row])
        cell.sweetView.layer.cornerRadius = 40.0
        cell.sweetView.layer.masksToBounds = true
        cell.sweetView.layer.borderWidth = 3.0
        cell.sweetView.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0).cgColor
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tradeImages.count
    }
}

