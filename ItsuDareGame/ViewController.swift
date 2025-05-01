//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by A S on 2025/05/02.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let iutsuArray : [String] = ["1年前", "１週間前", "昨日", "今日"]
    let dokodeArray : [String] = ["山の上で", "アメリカで", "学校で", "クラスで"]
    let daregaArray : [String] = ["僕が", "大統領が", "先生が", "友達が"]
    let doshitaArray : [String] = ["叫んだ", "演説した", "怒った", "踊った"]
    
    var index : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        itsuLabel.layer.cornerRadius = 12
        dokodeLabel.layer.cornerRadius = 12
        daregaLabel.layer.cornerRadius = 12
        doshitaLabel.layer.cornerRadius = 12
        
        itsuLabel.clipsToBounds = true
        dokodeLabel.clipsToBounds = true
        daregaLabel.clipsToBounds = true
        doshitaLabel.clipsToBounds = true
    }
    
    @IBAction func change() {
        
        // それぞれのラベルに配列の要素を表示する
        itsuLabel.text = iutsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        // indexの値を変更
        if index == 3 {
            
            index = 0
            
        } else {
            
            index += 1
            
        }
        
    }

    @IBAction func reset() {
        
        // それぞれのラベルの表示を元に戻す
        itsuLabel.text = "----"
        dokodeLabel.text = "----"
        daregaLabel.text = "----"
        doshitaLabel.text = "----"
        
        // indexを初期化
        index = 0
    }
    
    @IBAction func random() {
        
        // 乱数を生成してそれぞれのindexに入れる
        let itsuIndex = Int.random(in:0...3)
        let dokodeIndex = Int.random(in:0...3)
        let daregaIndex = Int.random(in:0...3)
        let doshitaIndex = Int.random(in:0...3)
        
        // コンソールに出力
        print("いつ : \(itsuIndex)")
        print("どこで : \(dokodeIndex)")
        print("だれが : \(daregaIndex)")
        print("どうした : \(doshitaIndex)")
        
        // それぞれのラベルに配列の要素を表示する
        itsuLabel.text = iutsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
    }

}

