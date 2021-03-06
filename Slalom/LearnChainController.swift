//
//  TimelineController.swift
//  Slalom
//
//  Created by Michael Westbrooks II on 5/31/17.
//  Copyright © 2017 RedRooster Technologies Inc. All rights reserved.
//

import UIKit

class LearnChainController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cell_ID: String = "cell"    // <- Identify a cell ID similar to UITableView
    let header_ID: String = "header"
    let footer_ID: String = "footer"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  MARK:- Handle any UI Changes on any element
        collectionView?.backgroundColor = .white
        
        //  MARK:- Make sure to register the cell class with the cell_ID for the collection view to begin displaying the cells.
        //  Use a custom cell or use UICollectionViewCell.self
        collectionView?.register(LearnChainCell.self, forCellWithReuseIdentifier: cell_ID)
        
        //  MARK:- Add your headers and footers with the code below.
        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: header_ID)
        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footer_ID)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cell_ID, for: indexPath) as! LearnChainCell
        
        
        return cell
    }
    
    //  MARK:- UICollectionView defaults the size of each cell to 50px by 50px. Use the function below to adjust the size.
    //  This function conforms to the UICollectionViewDelegateFlowLayout delegate
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 170)
    }
    
    //  MARK:- Implement the header and footer sections by using the below code and initializing the viewForSupplementaryOfKind that was created in the viewDidLoad()
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        var section = UICollectionReusableView()
        switch kind {
        case UICollectionElementKindSectionHeader:
            section = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: header_ID, for: indexPath)
            section.backgroundColor = .black
        case UICollectionElementKindSectionFooter:
            section = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: footer_ID, for: indexPath)
            section.backgroundColor = .gray
        default:
            break
        }
        return section
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 30)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 30)
    }
    
}

