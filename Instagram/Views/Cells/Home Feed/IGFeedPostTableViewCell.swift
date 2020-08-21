//
//  IGFeedPostTableViewCell.swift
//  Instagram
//
//  Created by Yusuke Mitsugi on 2020/08/21.
//  Copyright © 2020 Yusuke Mitsugi. All rights reserved.
//

import UIKit

final class IGFeedPostTableViewCell: UITableViewCell {
    
    static let identifire = "IGFeedPostTableViewCell"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure() {
        
    }
    
}
