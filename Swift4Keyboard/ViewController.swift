//
//  ViewController.swift
//  Swift4Keyboard
//
//  Created by 高橋智彦 on 2017/10/14.
//  Copyright © 2017年 高橋智彦. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var mailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    //@IBAction func upload(_ sender: Any) {
      //  resultLabel.text = mailTextField.text! + "&" + passwordTextField.text!

    //}
    
    // キーボードが閉じられるときの処理
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // 画面をタップされた時の処理
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        mailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    @IBAction func submit(_ sender: Any) {
        resultLabel.text = mailTextField.text! + "&" + passwordTextField.text!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

