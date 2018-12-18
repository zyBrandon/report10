//
//  ViewController.swift
//  Animate
//
//  Created by 周越 on 2018/11/24.
//  Copyright © 2018年 周越. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    var timer:Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (mytimer) in
            self.myView.center.x += 20
        }
    }

    
    @IBOutlet weak var btn: UIButton!
    
    
    @IBAction func click(_ sender: Any) {
        timer?.invalidate()
        UIView.animate(withDuration: 2, delay: 1, options: .curveEaseOut, animations: {
            self.myView.backgroundColor = UIColor.green
            self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi)).scaledBy(x: 0.5, y: 0.5)
            self.myView.transform = CGAffineTransform.identity
        }) { (finished) in
            
        }
    }
    

}

