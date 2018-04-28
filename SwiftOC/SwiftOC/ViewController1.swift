//
//  ViewController1.swift
//  SwiftOC
//
//  Created by apple on 28/04/18.
//  Copyright © 2018年 apple. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        let btn = UIButton.init(type: .custom)
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        btn.setTitle("返回", for: .normal)
        btn.backgroundColor = UIColor.red
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        view.addSubview(btn)
    }
    
    // MARK: - BtnClick
    @objc func btnClick() -> () {
        self.dismiss(animated: true, completion: nil)
    }
}
