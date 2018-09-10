//
//  CollectionViewController.swift
//  TestLayouts
//
//  Created by Rummy Khan on 9/10/18.
//  Copyright © 2018 Rummy Khan. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    var data : [Dictionary<String, String>] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.data = DataManager.getData()
        
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        
        self.collectionView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return data.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.reuseIdentifier, for: indexPath) as! CollectionViewCell
    
        let technology = self.data[indexPath.item]
        
        cell.icon.image = UIImage(named: technology["icon"]!)
        cell.title.text = technology["name"]
        cell.myDescription.text = technology["description"]
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let numOfColumns: CGFloat = 2.0
        let itemWidth = (collectionView.frame.width - (numOfColumns + 18)) / numOfColumns
        
        return CGSize(width: itemWidth, height: itemWidth*1.2)
    }
    
    // add padding
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
    }
    
    // spacing between line
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    // spacing between items
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}
