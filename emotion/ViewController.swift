//
//  ViewController.swift
//  emotion
//
//  Created by J on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet var emotionLabel: [UILabel]!
    
    var count = Array(repeating: 0, count: 9)
    var emotionName = ["행복해","사랑해","좋아해","당황해","속상해","우울해","심심해","삐딱해","쓸쓸해"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...count.count-1 {
            emotionText(a: emotionName[i], i: i)
        }
//        emotionText(a: emotionName[0], i: 0)
//        emotionText(a: emotionName[1], i: 1)
//        emotionText(a: emotionName[2], i: 2)
//        emotionText(a: emotionName[3], i: 3)
//        emotionText(a: emotionName[4], i: 4)
//        emotionText(a: emotionName[5], i: 5)
//        emotionText(a: emotionName[6], i: 6)
//        emotionText(a: emotionName[7], i: 7)
//        emotionText(a: emotionName[8], i: 8)
 
    }
    func emotionText(a: String, i: Int) {
            emotionLabel[i].text = "\(a) \(count[i])"
    }

    @IBAction func emotionButton(_ sender: UIButton) {
        for i in 0...count.count-1{
            if sender.tag == i{
                count[i] += 1
                emotionLabel[i].text = "\(emotionName[i]) \(count[i])"
            }
        }
    }
    
}

