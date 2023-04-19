//
//  ViewControllerForHome.swift
//  boat_shopping_applications
//
//  Created by R&W on 14/04/23.
//

import UIKit

class ViewControllerForHouse: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
   
    
    var arrBigPostureFromBoat = [21,22,23]
    
    var arrForIMG  = [1,2,3,4,5,6,7,8,9,10]
    var arrForTitle = ["1 Year Warranty","7 Days Replacement","Free Shipping","Secure Checkout","GST Billing","1 Year Warranty","7 Days Replacement","Free Shipping","Secure Checkout","GST Billing"]
    
    

    @IBOutlet weak var collectionViewForBigThreeadPosture: UICollectionView!
    @IBOutlet weak var collectionviewForInfo: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionviewForInfo{
            return arrForIMG.count
        }
        else  {
            return arrBigPostureFromBoat.count
        }
       
        
   }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.collectionviewForInfo{
        let cell1 = collectionviewForInfo.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionViewCell1
        cell1.lablforDetail.text = "\(arrForTitle[indexPath.row])"
        cell1.img1.image = UIImage(named: "\(arrForIMG[indexPath.row])")
        cell1.backgroundColor = .white
        return cell1
        }
        else{
            let cell2 = collectionViewForBigThreeadPosture.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCellForBigPosureThree
            cell2.imgeForBigPoster.image = UIImage(named: "\(arrBigPostureFromBoat[indexPath.row])")
            cell2.backgroundColor = .black
            
            
            return cell2
            
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.collectionviewForInfo{
            return CGSize(width: 150, height: 120)
        }
        else{
            return CGSize(width: 300, height: 350)

        }
    }
 
    

}
