//
//  Extentions.swift
//  Instagram
//
//  Created by Yusuke Mitsugi on 2020/08/18.
//  Copyright © 2020 Yusuke Mitsugi. All rights reserved.
//

import UIKit


extension UIView {
    
    public var width: CGFloat {
        return frame.size.width
    }
    
    public var height: CGFloat {
        return frame.size.height
    }
    
    public var top: CGFloat {
        return frame.origin.y
    }
    
    public var bottom: CGFloat {
        return frame.origin.y + frame.size.height
    }
    
    public var left: CGFloat {
        return frame.origin.x
    }
    
    public var right: CGFloat {
        return frame.origin.x + frame.size.width
    }
    
    
}
