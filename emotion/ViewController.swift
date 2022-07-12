//
//  ViewController.swift
//  emotion
//
//  Created by J on 2022/07/11.
//

import UIKit

// 열거형
//enum emotionEnum: Int {
//    // 열거형 Int는 값을 안주면 0부터 값이 하나씩 증가한 값을 준다.
//    case a
//    case b
//    case c
//    case d
//    case e
//    case f
//    case g
//    case h
//    case j
//}

class ViewController: UIViewController {
  
    @IBOutlet var emotionLabel: [UILabel]!
    
    var count = Array(repeating: 0, count: 9)
    var emotionName = ["행복해","사랑해","좋아해","당황해","속상해","우울해","심심해","삐딱해","쓸쓸해"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...count.count-1 {
// 매개 변수 없을 시
// emotionText(a: emotionName[i], i: i)
            emotionLabel[i].text = emotionText(a: emotionName[i], i: i)
        }

 
    }
    func emotionText(a: String, i: Int) -> String {
// 매개 변수 없을 시
// emotionLabel[i].text = "\(a) \(count[i])"

        // return이 함수 내에 오직 한 번만 사용되고 한 줄에 대한 코드 만 있을 경우 생략
        "\(a) \(count[i])"
    }

    @IBAction func emotionButton(_ sender: UIButton) {
        for i in 0...count.count-1{
            if sender.tag == i{
                count[i] += 1
                emotionLabel[i].text = "\(emotionName[i]) \(count[i])"
            }
        }
        
        
        // Switch문: 조건이 많을 경우 효율적으로 대응
//        switch sender.tag {
//        case emotionEnum.a.rawValue:
//            count[emotionEnum.a.rawValue] += 1
//            emotionLabel[emotionEnum.a.rawValue].text = "행복해 \(count[emotionEnum.a.rawValue])"
//
//        case emotionEnum.b.rawValue:
//            count[emotionEnum.b.rawValue] += 1
//            emotionLabel[emotionEnum.b.rawValue].text = "사랑해 \(count[emotionEnum.b.rawValue])"
//
//        case emotionEnum.c.rawValue:
//            count[emotionEnum.c.rawValue] += 1
//            emotionLabel[emotionEnum.c.rawValue].text = "좋아해 \(count[emotionEnum.c.rawValue])"
//
//        case emotionEnum.d.rawValue:
//            count[emotionEnum.d.rawValue] += 1
//            emotionLabel[emotionEnum.d.rawValue].text = "행해 \(count[emotionEnum.d.rawValue])"
//
//        case emotionEnum.e.rawValue:
//            count[emotionEnum.e.rawValue] += 1
//            emotionLabel[emotionEnum.e.rawValue].text = "복해 \(count[emotionEnum.e.rawValue])"
//
//        case emotionEnum.f.rawValue:
//            count[emotionEnum.f.rawValue] += 1
//            emotionLabel[emotionEnum.f.rawValue].text = "해 \(count[emotionEnum.f.rawValue])"
//
//        case emotionEnum.g.rawValue:
//            count[emotionEnum.g.rawValue] += 1
//            emotionLabel[emotionEnum.g.rawValue].text = "행복해ㅇ \(count[emotionEnum.g.rawValue])"
//
//        case emotionEnum.h.rawValue:
//            count[emotionEnum.h.rawValue] += 1
//            emotionLabel[emotionEnum.h.rawValue].text = "행복해ㅋ \(count[emotionEnum.h.rawValue])"
//
//        case emotionEnum.j.rawValue:
//            count[emotionEnum.j.rawValue] += 1
//            emotionLabel[emotionEnum.j.rawValue].text = "행복해ㄴ \(count[emotionEnum.j.rawValue])"
//
//
//        default:
//            print("No Value")
//        }
//
    }
    
}

