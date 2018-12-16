//
//  HandsetBrand.swift
//  QFBridge
//
//  Created by qingfengiOS on 2018/12/16.
//  Copyright © 2018年 情风. All rights reserved.
//

import UIKit


/// 手机品牌类
class HandsetBrand: NSObject {
    var brandName: String;
    var handsetSoft: HandsetSoft
    
    init(_ soft: HandsetSoft, _ brandName: String) {
        self.handsetSoft = soft
        self.brandName = brandName
    }
    
    func run() {
        
    }
}
