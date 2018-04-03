//
//  ViewController.swift
//  Alien View
//
//  Created by D7703_28 on 2018. 4. 3..
//  Copyright © 2018년 YDuChoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var Counter = 1
    var direction = true;
    
    @IBOutlet weak var Alienimage: UIImageView!
    @IBOutlet weak var Index: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 1st 이미지가 출력
        Alienimage.image = UIImage(named: "frame1.png")
        Index.text = "1"
    }

    @IBAction func Updateimage(_ sender: Any) {
        if Counter == 5 {
            direction = false
        } else if Counter == 1{
            direction = true
        }
        if direction == true {
            Counter += 1;
        } else if direction == false {
            Counter = Counter - 1
        }
        Alienimage.image = UIImage(named: "frame\(Counter).png")
        Index.text = String(Counter)
        }
    }
