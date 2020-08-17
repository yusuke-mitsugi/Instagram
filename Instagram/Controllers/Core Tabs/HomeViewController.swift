//
//  ViewController.swift
//  Instagram
//
//  Created by Yusuke Mitsugi on 2020/08/16.
//  Copyright © 2020 Yusuke Mitsugi. All rights reserved.
//

import UIKit
import FirebaseAuth


class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticated()
        
    }
    
    
    private func handleNotAuthenticated() {
        //認証ステータスを確認する
        if Auth.auth().currentUser == nil {
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }
    
}

