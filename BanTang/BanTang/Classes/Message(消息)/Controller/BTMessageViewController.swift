//
//  BTMessageViewController.swift
//  BanTang
//
//  Created by 颖帆帆帆 on 16/5/23.
//  Copyright © 2016年 颖帆帆帆. All rights reserved.
//

import UIKit

class BTMessageViewController: UIViewController {
    
    
    

    lazy var topView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 添加顶部View
        setupTopView()
        
    }

}

extension BTMessageViewController {
    
    // MARK: - 添加所有子控制器
    func setupAllChildVC() {
        
        let <#name#> = <#value#>
        
        
    }
    
    
    // MARK: - 添加顶部View
    func setupTopView() {
        
        let w : CGFloat = UIScreen.mainScreen().bounds.width
        let rect = CGRect(x: 0, y: 64, width: w, height: 40)
        
        topView = UIView(frame: rect)
        topView.backgroundColor = UIColor.whiteColor()
        
        self.view.addSubview(topView)
    }
}

