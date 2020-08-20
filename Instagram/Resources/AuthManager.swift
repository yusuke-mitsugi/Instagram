//
//  AuthManager.swift
//  Instagram
//
//  Created by Yusuke Mitsugi on 2020/08/17.
//  Copyright © 2020 Yusuke Mitsugi. All rights reserved.
//
import FirebaseAuth

public class AuthManager {
    
    static let shared = AuthManager()
    
    
    
    public func registerNewUser(username: String, email: String, password: String, completion: @escaping(Bool) -> Void) {
        
        DatabaseManager.shared.canCreateNewUser(with: email, username: username) { canCreate in
            if canCreate {
                Auth.auth().createUser(withEmail: email, password: password) { result, error in
                    guard error == nil, result != nil else {
                        //アカウントを作成できない
                        completion(false)
                        return
                    }
                    DatabaseManager.shared.insertNewUser(with: email, username: username) { inserted in
                        if inserted {
                            completion(true)
                            return
                        }
                        else {
                            //データベースに入らない
                            completion(false)
                            return
                        }
                    }
                }
            }
            //存在しない
            completion(false)
        }
    }
    
    
    
    
    public func loginUser(username: String?, email: String?, password: String, completion: @escaping(Bool) -> Void) {
        if let email = email {
            //Emailログイン
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                guard authResult != nil, error == nil else {
                    completion(false)
                    return
                }
                completion(true)
            }
        }
        else if let username = username {
            //ユーザー名ログイン
            print(username)
        }
    }
    
    //Firebaseユーザーをログアウトする
    public func logout(completion: (Bool) -> Void) {
        do {
            try Auth.auth().signOut()
            completion(true)
            return
        }
        catch {
            print(error)
            completion(false)
            return
        }
    }
}
