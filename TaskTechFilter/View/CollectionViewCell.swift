//
//  CollectionViewCell.swift
//  TaskTechFilter
//
//  Created by Anuj Soni on 04/05/23.
//

import UIKit

class MyCustomCell: UICollectionViewCell {
    let img: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.backgroundColor = .lightGray
        return iv
    }()
    
    let title: UILabel = {
        let t1 = UILabel()
        t1.translatesAutoresizingMaskIntoConstraints = false
        t1.textAlignment = .center
        t1.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        return t1
    }()
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        contentView.addSubview(img)
        contentView.addSubview(title)
        
        img.topAnchor.constraint(equalTo: contentView.topAnchor,constant:5).isActive = true
        img.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant:5).isActive = true
        img.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant:-5).isActive = true
        img.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant:-30).isActive = true
        
        title.topAnchor.constraint(equalTo:img.bottomAnchor).isActive = true
        title.leadingAnchor.constraint(equalTo:contentView.leadingAnchor,constant:5).isActive = true
        title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant:-5).isActive = true
        title.bottomAnchor.constraint(equalTo:contentView.bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


