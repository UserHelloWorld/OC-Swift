//
//  ViewController.swift
//  SwiftOC
//
//  Created by apple on 28/04/18.
//  Copyright © 2018年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var tableView:UITableView? = nil
    
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView.init(frame: view.bounds, style: .plain)
        tableView?.delegate = self
        tableView?.dataSource = self
        view.addSubview(tableView!)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    // MARK: - UITableViewDelegate
    // 返回多少组
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (dataArray?.count)!
    }
    
    // 创建cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = dataArray?[indexPath.row]
        return cell!
    }
    
    // 选中行
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            self.present(OCViewController1.init(), animated: true, completion: nil)
        case 1:
            print(indexPath.row)
            self.present(ViewController1.init(), animated: true, completion: nil)
        default:
            print(12)
        }
    }
    
    // MARK: - 懒加载数据
    lazy var dataArray: [String]? = {
        return ["oc","swift"]
    }()
    
}

