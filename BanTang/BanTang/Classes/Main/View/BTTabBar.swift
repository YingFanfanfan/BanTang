//
//  BTTabBar.swift
//  BanTang
//
//  Created by 颖帆帆帆 on 16/5/23.
//  Copyright © 2016年 颖帆帆帆. All rights reserved.
//

import UIKit

class BTTabBar: UITabBar {

    
    // 懒加载Modal按钮
    lazy var modalBtn : UIButton = {
     
        let btn = UIButton(type: .Custom)
        btn.setImage(UIImage(named: "tab_publish_add_36x32_"), forState: .Normal)
        btn.setImage(UIImage(named: "tab_publish_add_pressed_36x32_"), forState: .Selected)
        
        // 设置按钮自适应
        btn.sizeToFit()
        
        // 添加按钮
        self.addSubview(btn)
        
        return btn
        
    }()
    
    
    // 重写布局
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let count : NSInteger = (self.items?.count)!
        
        let w : CGFloat = UIScreen.mainScreen().bounds.width / CGFloat(count + 1)
        let h : CGFloat = self.bounds.height
        var x : CGFloat = 0
        let y : CGFloat = 0
        
        var i : CGFloat = 0
        for var btn : UIView in self.subviews {
            if btn.isKindOfClass(NSClassFromString("UITabBarButton")!) {
                if i == 2 {
                    i += 1
                }
                
                x = i * w
                
                btn.frame = CGRect(x: x, y: y, width: w, height: h)
                
                i += 1
            }
        }
        
        self.modalBtn.center = CGPoint(x: self.bounds.size.width * 0.5, y: self.bounds.size.height * 0.5)
        
    }
    

}
