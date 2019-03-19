//
//  ViewController.swift
//  GogoMind
//
//  Created by Henry Tseng on 2019/3/19.
//  Copyright © 2019 Gogolook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var toolbar: UIToolbar = UIToolbar()
    var contextView: UIView = UIView()
    
    var rootComponent: Root = Root()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        implementComponents()
    }
    
    private func implementComponents() {
        view.addSubview(toolbar)
        toolbar.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[bar]-|", options: .alignAllBottom, metrics: nil, views: ["bar": toolbar]))
        
        let loadButton = UIBarButtonItem(image: UIImage(named: "blue-folder-open-document"), style: .plain, target: nil, action: nil)
        let saveButton = UIBarButtonItem(image: UIImage(named: "disk--pencil"), style: .plain, target: nil, action: nil)
        
        let insertButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertButtonTapped))
        toolbar.items = [loadButton, saveButton, insertButton]
        
        view.addSubview(contextView)
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[view]-|", options: .alignAllCenterY, metrics: nil, views: ["view": contextView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-[view]-[bar(44)]-|", options: .alignAllCenterX, metrics: nil, views: ["view": contextView, "bar": toolbar]))
    }
    
    func render() {
        
    }
    
    @objc
    func insertButtonTapped() {
        let alert = UIAlertController(title: "新增", message: "請輸入上層的 Node ID", preferredStyle: .alert)
        alert.addTextField { (field) in
            
        }
        alert.addAction(UIAlertAction(title: "取消", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "新增", style: .default, handler: { (_) in
            
        }))
        present(alert, animated: true, completion: nil)
    }


}

