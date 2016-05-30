//
//  BTTabBarVC.swift
//  BanTang
//
//  Created by 颖帆帆帆 on 16/5/23.
//  Copyright © 2016年 颖帆帆帆. All rights reserved.
//

import UIKit

class BTTabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        
        // 添加所有子控制器
        setupAllChildVC()
        
        // 自定义tabBar按钮
        setupTabBar()
        
        
    }
    
}

extension BTTabBarVC {
    
    // MARK: - 添加所有子控制器
    func setupAllChildVC() {
        
        // 首页
        let homeVC = BTHomeViewController()
        self.setupOneChileVC(homeVC, image: "tab_首页_24x24_", selectImage:  "tab_首页_pressed_24x24_", title: nil)
        
        // 发现
        let discoverVC = BTDiscoverViewController()
        self.setupOneChileVC(discoverVC, image: "tab_社区_26x26_", selectImage: "tab_社区_pressed_26x26_", title: nil)
        
        // 消息
        let messageVC = BTMessageViewController()
        self.setupOneChileVC(messageVC, image: "tab_分类_27x21_", selectImage: "tab_分类_pressed_27x21_", title: "消息")
        
        // 账户
        let accountVC = BTAccountViewController()
        self.setupOneChileVC(accountVC, image: "tab_我的_22x23_", selectImage: "tab_我的_22x23_", title: nil)
        
    }
    
    
    func setupOneChileVC(vc: UIViewController, image: String, selectImage: String, title: String?) {
        
        let nav = BTNavigationController(rootViewController: vc)
        
        vc.navigationItem.title = title
        nav.tabBarItem.image = UIImage(named: image)
        nav.tabBarItem.selectedImage = UIImage(named: selectImage)
        nav.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
        
        self.addChildViewController(nav)
        
    }

}


extension BTTabBarVC {
    
    // MARK: - 自定义tabBar
    func setupTabBar() {
        
        // 创建自定义tabBar
        let tabBar = BTTabBar()
        
        // 设置tabBar
        self.setValue(tabBar, forKey: "tabBar")
        
    }
    
}