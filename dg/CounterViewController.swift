//
//  CounterViewController.swift
//  dg
//
//  Created by Ryo Matsumoto on 2015/04/16.
//  Copyright (c) 2015年 Ryo Matsumoto. All rights reserved.
//

import UIKit

class CounterViewController: UIViewController {

    
    // 変数定義は全てvar で行う
    var number = 0
    
    // ! の意味が分からない。なんぞこれ
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func changeColor(){
        // 色の操作
        if number >= 10 {
            numberLabel.textColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
        } else if number <= -10 {
            numberLabel.textColor = UIColor(red: 2.0, green: 0.0, blue: 0.0, alpha: 1.0)
        } else {
            numberLabel.textColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        }
    }
    
    @IBAction func countUp(sender: AnyObject) {
        
        // 数字の操作
        number++;
        
        // 色の変更
        changeColor()
        
        //実際に文字を表示（変更）
        numberLabel.text = NSString(format: "%d",  number)
        NSLog("CountUp")
    }
    
    @IBAction func countClear(sender: AnyObject) {
        number = 0
        changeColor()
        numberLabel.text = NSString(format: "%d",  number)
        NSLog("Clear")
    }
    
    @IBAction func countDown(sender: AnyObject) {
        number--;
        changeColor()
        numberLabel.text = NSString(format: "%d",  number)
        NSLog("CountDown")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
