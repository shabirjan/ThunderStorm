//
//  NowCollectionViewCell.swift
//  ThunderStorm
//
//  Created by Shabir Jan on 07/03/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

import UIKit

class NowCollectionViewCell: UICollectionViewCell {
    static let ReuseIdentifier = "NowCollectionViewCell"
    
    let viewController : NowViewController
    
    // MARK : - Initialization
    
    override init(frame: CGRect){
        //Initailize View Controller
        viewController = NowViewController()
        
        super.init(frame: frame)
        
        setupViewController()
    }
    
    required init?(coder aDecoder : NSCoder){
        //Initailze View Controller
        viewController = NowViewController()
        
        super.init(coder: aDecoder)
        
        setupViewController()
    }
    
    private func setupViewController(){
        // Configure View Controller
        viewController.view.backgroundColor = .green
        
        // Add View Controller to Content View
        contentView.addSubview(viewController.view)
        
        if let view = viewController.view {
            view.translatesAutoresizingMaskIntoConstraints = false
            
            view.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0.0).isActive = true
            view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0.0).isActive = true
            view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0.0).isActive = true
            view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0.0).isActive = true
        }
    }

}
