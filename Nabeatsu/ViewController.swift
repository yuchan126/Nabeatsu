//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() -> Bool {
        
        let checkNum: Int = number //3がつくか判断するための変数
        while checkNum != 0 {
            if checkNum % 10 == 3 || checkNum % 3  == 0 {
                return true
            }else if checkNum % 10 != 3 || checkNum % 3 != 0{
                return false
            }
        }
    
        // 問題4: 3がつくかどうか調べる
     
        return false 
    }
    
    @IBAction func pulsButton(){
        number = number + 1
        countLabel.text = String(number)
        if isAho() == true{
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
         faceLabel.text = "(゜o゜)"
        }
        }
    
    @IBAction func clarButton(){
        number = 0
        countLabel.text = String(number)
         faceLabel.text = "(゜o゜)"
        }
    }


    



