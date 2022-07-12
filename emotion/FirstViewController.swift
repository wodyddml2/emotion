//
//  FirstViewController.swift
//  emotion
//
//  Created by J on 2022/07/12.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var example: UILabel!
    @IBOutlet weak var s: UIButton!
    @IBOutlet var imageLabel: [UILabel]!
    var arr = Array(repeating: 0, count: 9)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        example.text = userNickname()
        
        view.backgroundColor = example1().0
        s.setImage(UIImage(named: example1().1), for: .normal)
        
        let image = UIImage(named: "sesac_slime6")?.withRenderingMode(.alwaysOriginal)
        s.setImage(image, for: .normal)
//        let systemImage = UIImage(systemName: <#T##String#>)  // 애플 시스템 심볼 사용
        
    }
    
    // 배경색, 레이블, 이미지
    func example1() -> (UIColor, String, String) {
        let color: [UIColor] = [.yellow, .red, .blue]
        let image: [String] = ["sesac_slime6", "sesac_slime7", "sesac_slime8","sesac_slime5"]
        return (color.randomElement()!, image.randomElement()!, "배곱")
        // 리턴 뒤의 코드는 실행 불가
    }
    
    func userNickname() -> String {
        let nickname = ["고래밥", "칙촉", "격투가"]
        let select = nickname.randomElement()!
        
        return "난 \(select)"
        
    }

    @IBAction func ss(_ sender: UIButton) {
        print(sender.tag, sender.currentImage)
        for i in 0...8 {
            if sender.tag == i {
                arr[i] += 1
                imageLabel[i].text = "\(arr[i])"
            }
        }
        showAlertController()
   
    }
    func showAlertController() {
        //1. 흰 바탕: UIAlertController
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        // nil 사용하면 더욱 간지
        //2. 버튼
        let ok = UIAlertAction(title: "확인", style: .default, handler: nil)
        let cancle = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let web = UIAlertAction(title: "새 창", style: .destructive, handler: nil)
        let copy = UIAlertAction(title: "복사", style: .default, handler: nil)
        
        //3. 1+2
        alert.addAction(copy)
        alert.addAction(web)
        alert.addAction(cancle)
        alert.addAction(ok)
        
        // cancle 스타일을 주면 항상 아래나 왼쪽에 위치 human interface guidline
        
        //4. present
        present(alert, animated: true, completion: nil)
    }
 
}
