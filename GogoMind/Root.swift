//
//  Root.swift
//  GogoMind
//
//  Created by Henry Tseng on 2019/3/19.
//  Copyright © 2019 Gogolook. All rights reserved.
//

import Foundation

protocol Component {
    func addSibling(component: Component)
}

protocol Composite {
    func add(_ component: Component)
    func remove(_ component: Component)
}

struct Root: Component, Composite {
    var children: [Node] = []
    
    func addSibling(component: Component) {
        
    }
    
    func add(_ component: Component) {
        
    }
    
    func remove(_ component: Component) {
        
    }
}

struct Node: Component, Composite {
    var children: [Node] = []
    
    func addSibling(component: Component) {
        
    }
    
    func add(_ component: Component) {
        
    }
    
    func remove(_ component: Component) {
        
    }
}
