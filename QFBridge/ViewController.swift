//
//  ViewController.swift
//  QFBridge
//
//  Created by qingfengiOS on 2018/12/16.
//  Copyright © 2018年 情风. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.useInheritance()
        print("-----------------")
        self.useComposition()
        /*
         将抽象部分与它的实现部分分离，使它们都可以独立地变化
         
         实现系统时可能有多角度分类，每一种分类都有可能变化，那么就把这种多角度分离出来，让他们独立变化，减少他们之间的耦合
         */
    }

    func useInheritance() {
        let game = HandsetGame()
        game.run()
        
        let gameM = HandsetGameM()
        gameM.run()
        
        let gameN = HandsetGameN()
        gameN.run()
    }
    
    func useComposition() {
        var brand: HandsetBrand;
        
        brand = HandsetBrandM(HandsetGames(), "M")
        brand.run()
        
        brand = HandsetBrandM(HandsetAddressList(), "M")
        brand.run()
        
        brand = HandsetBrandN(HandsetGames(), "N")
        brand.run()
        
        brand = HandsetBrandN(HandsetAddressList(), "N")
        brand.run()
        
        //这样的设计我们新增一个手机品牌O或者手机软件(播放音乐)时，就无需改动原有的类了
        brand = HadnsetBrandO(HandsetMusic(),"O")
        brand.run()
    }
}

