//
//  SecondViewController.swift
//  emotion
//
//  Created by J on 2022/07/12.
//

import UIKit

enum MusicType: Int {
    case all = 0
    case korea = 1
    case other = 2
}

class SecondViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentValueChanged(segmentControl)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func segmentValueChanged(_ sender: UISegmentedControl) {
        
        if segmentControl.selectedSegmentIndex == MusicType.all.rawValue {
            resultLabel.text = "첫"
        }
        
        
        
        
        if segmentControl.selectedSegmentIndex == 0 {
            resultLabel.text = "첫"
        } else if segmentControl.selectedSegmentIndex == 1 {
            resultLabel.text = "둘"
        } else if segmentControl.selectedSegmentIndex == 2 {
            resultLabel.text = "셋"
        } else {
            resultLabel.text = "땡"
        }
    }
    
    

}
