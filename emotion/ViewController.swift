//
//  ViewController.swift
//  emotion
//
//  Created by J on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet var emotionLabel: [UILabel]!
    
    var count1 = 0
    var count2 = 0
    var count3 = 0
    var count4 = 0
    var count5 = 0
    var count6 = 0
    var count7 = 0
    var count8 = 0
    var count9 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emotionText(a: "행복해", i: 0)
        emotionText(a: "사랑해", i: 1)
        emotionText(a: "좋아해", i: 2)
        emotionText(a: "당황해", i: 3)
        emotionText(a: "속상해", i: 4)
        emotionText(a: "우울해", i: 5)
        emotionText(a: "심심해", i: 6)
        emotionText(a: "삐딱해", i: 7)
        emotionText(a: "쓸쓸해", i: 8)
 
    }
    func emotionText(a: String, i: Int) {
            emotionLabel[i].text = "\(a) 0"
    }

    @IBAction func emotion1(_ sender: UIButton) {
        
        count1 += 1
        emotionLabel[0].text = "행복해 \(count1)"
    }
    @IBAction func emotion2(_ sender: UIButton) {
        
        count2 += 1
        emotionLabel[1].text = "사랑해 \(count2)"
    }
    @IBAction func emotion3(_ sender: UIButton) {
       
        count3 += 1
        emotionLabel[2].text = "좋아해 \(count3)"
    }
    
    @IBAction func emotion4(_ sender: UIButton) {
        
        count4 += 1
        emotionLabel[3].text = "당황해 \(count4)"
    }
    
    @IBAction func emotion5(_ sender: UIButton) {
   
        count5 += 1
        emotionLabel[4].text = "속상해 \(count5)"
    }
    
    @IBAction func emotion6(_ sender: UIButton) {
        
        count6 += 1
        emotionLabel[5].text = "우울해 \(count6)"
    }
    
    @IBAction func emotion7(_ sender: UIButton) {
        
        count7 += 1
        emotionLabel[6].text = "심심해 \(count7)"
    }
    
    @IBAction func emotion8(_ sender: UIButton) {
        
        count8 += 1
        emotionLabel[7].text = "삐딱해 \(count8)"
    }
    
    @IBAction func emotion9(_ sender: UIButton) {
       
        count9 += 1
        emotionLabel[8].text = "쓸쓸해 \(count9)"
    }
}

