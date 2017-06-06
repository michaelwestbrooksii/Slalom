//
//  TimelineCell.swift
//  Slalom
//
//  Created by Michael Westbrooks II on 5/31/17.
//  Copyright © 2017 RedRooster Technologies Inc. All rights reserved.
//

import UIKit


class LearnChainCell: UICollectionViewCell{
    
    let constX = 8.0
    let constY = 8.0
    let proImgHeight = 32.0
    let proImgWidth = 32.0
    let nameLblHeight = 16.0
    let nameLblWidth = 150.0
    let upvoteBtnHeight = 25.0
    let upvoteBtnWidth = 25.0
    
    //  MARK:- Gets called when a cell is dequeued
    override init(frame: CGRect) {
        super.init(frame: frame)
        //  MARK:- Do UI Stuff here
        setupViews()
    }
    
    
    func setupViews(){
        backgroundColor = .white
        
        let profileImg = UIImageView(
            frame: CGRect(
                x: constX,
                y: constY,
                width: proImgWidth * 2,
                height: proImgHeight * 2
            )
        )
        profileImg.translatesAutoresizingMaskIntoConstraints = true
        profileImg.layer.cornerRadius = 5
        profileImg.backgroundColor = UIColor.red
        profileImg.clipsToBounds = true
        profileImg.image = UIImage(named: "user3")
        profileImg.contentMode = .scaleAspectFill
        addSubview(profileImg)
        
        let nameLabel: UILabel = UILabel(
            frame: CGRect(
                x: (constX * 2) + Double(profileImg.frame.width),
                y: constY,
                width: nameLblWidth,
                height: nameLblHeight
            )
        )
        let fullName = "Charles Xavier"
        nameLabel.text = fullName
        nameLabel.font = UIFont.boldSystemFont(ofSize: 16)
        addSubview(nameLabel)
        
        let usernameLabel : UILabel = UILabel(
            frame: CGRect(
                x: (constX * 3) + Double(profileImg.frame.width) + Double(nameLabel.frame.width),
                y: constY,
                width: Double(UIScreen.main.bounds.width) - Double(profileImg.frame.width) - Double(nameLabel.frame.width) - (constX * 4),
                height: nameLblHeight
            )
        )
        let userName = "CharlesXavier"
        usernameLabel.text = "@" + userName
        usernameLabel.font = UIFont.boldSystemFont(ofSize: 12)
        usernameLabel.textAlignment = .right
        addSubview(usernameLabel)
        
        let detailLabel: UITextView = UITextView(
            frame: CGRect(
                x: (constX * 2) + Double(profileImg.frame.width),
                y: (nameLblHeight * 2),
                width: Double(UIScreen.main.bounds.width) - ((constX * 3) + Double(profileImg.frame.width)),
                height: nameLblHeight * 5
            )
        )
        detailLabel.text = "I'm so freaking awesome. I cannot believe that the world hates me this much. Only if they spent more time appreciating than hating."
        detailLabel.font = UIFont.systemFont(ofSize: 15)
        addSubview(detailLabel)
        
        let upVoteBtnOne: UIButton = UIButton(
            frame: CGRect(
                x: (constX * 2) + Double(profileImg.frame.width),
                y: (nameLblHeight * 2.5) + Double(detailLabel.frame.height),
                width: Double(detailLabel.frame.width) / 2 - 4,
                height: 32.0
            )
        )
        upVoteBtnOne.setTitle("Upvote  ", for: .normal)
        upVoteBtnOne.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        upVoteBtnOne.setTitleColor(UIColor.lightGray, for: .normal)
        upVoteBtnOne.layer.cornerRadius = 5
        upVoteBtnOne.layer.borderColor = UIColor.lightGray.cgColor
        upVoteBtnOne.layer.borderWidth = 2
        
        let likeImage = UIImage(named: "like")
        let imageNewSize = CGSize(width: 25.0, height: 25.0)
        UIGraphicsBeginImageContext(imageNewSize)
        likeImage?.draw(in: CGRect(x: 0.0, y: 0.0, width: imageNewSize.width, height: imageNewSize.height))
        let newLikeImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        upVoteBtnOne.setImage(newLikeImage, for: .normal)
        upVoteBtnOne.imageView?.contentMode = .scaleAspectFit
        upVoteBtnOne.imageEdgeInsets = UIEdgeInsets(top: 0, left: -24, bottom: 0, right: 24)
        upVoteBtnOne.titleEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 8)

        addSubview(upVoteBtnOne)
        
        let upVoteBtnTwo: UIButton = UIButton(
            frame: CGRect(
                x: (constX * 3) + Double(profileImg.frame.width) + Double(upVoteBtnOne.frame.width),
                y: (nameLblHeight * 2.5) + Double(detailLabel.frame.height),
                width: Double(upVoteBtnOne.frame.width), //  Double(detailLabel.frame.width) / 2 - 4,
                height: 32.0
            )
        )
        upVoteBtnTwo.setTitle("Downvote", for: .normal)
        upVoteBtnTwo.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        upVoteBtnTwo.setTitleColor(UIColor.red, for: .normal)
        upVoteBtnTwo.layer.cornerRadius = 5
        upVoteBtnTwo.layer.borderColor = UIColor.red.cgColor
        upVoteBtnTwo.layer.borderWidth = 2
        
        let unlikeImage = UIImage(named: "unlike")
        let unimageNewSize = CGSize(width: 25.0, height: 25.0)
        UIGraphicsBeginImageContext(unimageNewSize)
        unlikeImage?.draw(in: CGRect(x: 0.0, y: 0.0, width: unimageNewSize.width, height: unimageNewSize.height))
        let newUnLikeImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        upVoteBtnTwo.setImage(newUnLikeImage, for: .normal)
        upVoteBtnTwo.imageView?.contentMode = .scaleAspectFit
        upVoteBtnTwo.imageEdgeInsets = UIEdgeInsets(top: 0, left: -24, bottom: 0, right: 24)
        upVoteBtnTwo.titleEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 8)


        addSubview(upVoteBtnTwo)
            
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
