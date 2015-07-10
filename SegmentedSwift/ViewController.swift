//
//  ViewController.swift
//  SegmentedSwift
//
//  Created by MAEDAHAJIME on 2015/07/10.
//  Copyright (c) 2015年 MAEDA HAJIME. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbSegment: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // セグメンテッドコントロール値変更時
    @IBAction func lbSegment(sender: UISegmentedControl) {
        
        // ボタンのインデックス番号の取得 @property selectedSegmentIndex
        var idx:NSInteger = sender.selectedSegmentIndex
        
        // ラベルの習得 メソッド titleForSegmentAtIndex 戻り値 NSString型になる
        var str:NSString = sender.titleForSegmentAtIndex(idx)!
        
        println("\(sender.tag) \(str)")
        
        self.lbSegment.text = str as String
    }

}

