//
//  MainCollectionViewCell.swift
//  Slalom
//
//  Created by Michael Westbrooks II on 5/26/17.
//  Copyright © 2017 RedRooster Technologies Inc. All rights reserved.
//
//  MARK:- Create Custom Cell Class
//  STEP 1: SUBCLASS THE CELL
//  STEP 2: CREATE YOUR INIT(FRAME: CGRECT) 

import UIKit


class MainCell: UICollectionViewCell{
    
    //  MARK:- Gets called when a cell is dequeued
    override init(frame: CGRect) {
        super.init(frame: frame)
        //  MARK:- Do UI Stuff here
        setupViews()
    }
    
    let mainLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 8, y: 0, width: UIScreen.main.bounds.width, height: 60))
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()
    
    func setupViews(){
        backgroundColor = .yellow
        addSubview(mainLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
