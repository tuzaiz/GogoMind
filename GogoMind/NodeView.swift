//
//  NodeView.swift
//  GogoMind
//
//  Created by Henry Tseng on 2019/3/19.
//  Copyright © 2019 Gogolook. All rights reserved.
//

import UIKit

class NodeView: UIView {
    var textLabel: UILabel = UILabel()
    
    init() {
        super.init(frame: CGRect.zero)
        addSubview(textLabel)
        addConstraint(NSLayoutConstraint(item: textLabel, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1.0, constant: 0.0))
        addConstraint(NSLayoutConstraint(item: textLabel, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1.0, constant: 0.0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
