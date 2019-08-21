//
//  MemoViewController.swift
//  SimpleMemoApp
//
//  Created by 寺島 洋平 on 2019/08/20.
//  Copyright © 2019年 YoheiTerashima. All rights reserved.
//

import UIKit

class MemoViewController: UIViewController {
    
    var memo: String?

    @IBOutlet weak var memoTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // saveボタンを無効にする
        self.saveButton.isEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func memoTextFieldChanged(_ sender: Any) {
        let memo = self.memoTextField.text ?? ""
        self.saveButton.isEnabled = !memo.isEmpty
    }
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let button = sender as? UIBarButtonItem, button === self.saveButton else {
            return
        }
        self.memo = self.memoTextField.text ?? ""
    }

}
