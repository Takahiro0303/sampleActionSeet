//
//  ViewController.swift
//  sampleActionSheet
//
//  Created by takahiro tshuchida on 2017/09/04.
//  Copyright © 2017年 Takahiro Tshuchida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
//    ボタンが押された時に発動
    @IBAction func tapSelect(_ sender: UIButton) {
//        アクションシートを作成
        let actionSheet = UIAlertController(title: "どのアクティビティーにする？", message: "今日のアクティビティー", preferredStyle: .actionSheet)
        
//        アクティビティーボタン1を追加
//        actionSheet.addAction(UIAlertAction(title: "ヨガ", style: .default, handler: {action in self.myLabel.text = "ヨガ、行こう!"}))
        actionSheet.addAction(UIAlertAction(title: "ヨガ", style: .default, handler: {action in self.Activity(name: "ヨガ")}))
        
//        アクティビティーボタン2を追加
//        actionSheet.addAction(UIAlertAction(title: "バスケ", style: .default, handler: {action in self.myLabel.text = "バスケ、行こう!"}))
        actionSheet.addAction(UIAlertAction(title: "バスケ", style: .default, handler: {action in self.Activity(name: "バスケ")}))

//        削除ボタンを追加
//        actionSheet.addAction(UIAlertAction(title: "ムエタイ", style: .destructive, handler: {action in self.myLabel.text = "ムエタイ頑張ろう!"}))
        actionSheet.addAction(UIAlertAction(title: "ムエタイ", style: .destructive, handler: {action in self.Activity2(name2: "ムエタイ")}))

        
//        キャンセルボタンを追加
//        actionSheet.addAction(UIAlertAction(title: "今日はやめとく", style: .cancel, handler: {action in self.myLabel.text = "明日は行こう!"}))
        actionSheet.addAction(UIAlertAction(title: "今日はやめとく", style: .cancel, handler: {action in self.Activity3(name3: "明日")}))
//        アクションシートを表示
        present(actionSheet,animated: true,completion: nil)
        
        
    }
    
    
//    アクティビティーボタンが押されたら起動する自作関数
//    Activity 関数名
//    name 引数　（ヨガとかバスケとかが呼び出されたところから代入される）
    func Activity(name:String){
        myLabel.text = "\(name)、行こう!"
    }
    
    func Activity2(name2:String){
        myLabel.text = "\(name2)、頑張ろう"
    }
    
    func Activity3(name3:String){
        myLabel.text = "\(name3)は行こう"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//TODO:削除ボタンが押された時に呼ばれる関数

//TODO:キャンセルボタンが押された時に呼ばれる関数

//TODO:作った関数を呼び出すようにしたらGithubにPushしましょう


