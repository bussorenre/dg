//
//  ViewController.swift
//  dg
//
//  Created by Ryo Matsumoto on 2015/04/15.
//  Copyright (c) 2015年 Ryo Matsumoto. All rights reserved.
//

// iOSを書くのに必要なキットをインポート
import UIKit

class ViewController: UIViewController {

    // エントリーポイント（ビューが読み込まれた時に動くメソッド）
    override func viewDidLoad() {
        // コンソール（デバッグ画面）に文字を表示させる
        NSLog("Hello, iPhone with Swift!!")
        
        // 変数の宣言
        var number = 100
        
        // 変数の計算
        number = number + 100       // = は代入の意味。左右統合の意味ではない
        number = number - 100
        number = number / 100       // 割り算
        number = number * 100       // 掛け算
        
        number = number % 4         // 割り算のあまり

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

