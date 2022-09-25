//
//  ShopViewController.swift
//  Shop
//
//  Created by Esraa Khaled   on 11/08/2022.
//

import UIKit

class ShopViewController: UIViewController ,UIScrollViewDelegate{

    @IBOutlet weak var tableView: UITableView!

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var sweetsImages = ["sweet1","sweet2","sweet3","sweet4","sweet5"]
    var tradeImages=["trade1","trade2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupCollectionView()
        setupPagecontrol()
       
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
       let visibleRect = CGRect(origin: self.collectionView.contentOffset, size: self.collectionView.bounds.size)
       let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
       if let visibleIndexPath = self.collectionView.indexPathForItem(at: visiblePoint) {
                self.pageControl.currentPage = visibleIndexPath.row
       }
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
    }
    
    func setupCollectionView(){
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func setupPagecontrol(){
        pageControl.numberOfPages = sweetsImages.count
    }
    
   
    @IBAction func pageClicked(_ sender: UIPageControl) {
        self.collectionView.scrollToItem(at: IndexPath(row: sender.currentPage, section: 0), at: .centeredHorizontally, animated: true)
    }
}
