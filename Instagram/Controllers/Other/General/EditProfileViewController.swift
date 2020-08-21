//
//  EditProfileViewController.swift
//  Instagram
//
//  Created by Yusuke Mitsugi on 2020/08/16.
//  Copyright © 2020 Yusuke Mitsugi. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "保存",
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapSave))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "キャンセル",
                                                           style: .plain,
                                                           target: self,
                                                           action: #selector(didTapCancel))
    }
    
    
    @objc private func didTapSave() {
        
    }
    
    @objc private func didTapCancel() {
        
    }
    
    
    @objc private func didTapChangeProfilePicture() {
        let actionSheet = UIAlertController(title: "プロフィール写真",
                                            message: "プロフィール写真を変更します",
                                            preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "写真を撮ります", style: .default,handler: { (_) in
            <#code#>
        }))
        actionSheet.addAction(UIAlertAction(title: "アルバムから選びます", style: .default,handler: { (_) in
            <#code#>
        }))
        actionSheet.addAction(UIAlertAction(title: " キャンセルします", style: .cancel, handler: nil))
        actionSheet.popoverPresentationController?.sourceView = view
        actionSheet.popoverPresentationController?.sourceRect = view.bounds
        
        present(actionSheet, animated: true)
    }
    
    
    
}
