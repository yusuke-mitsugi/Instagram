//
//  DatabaseManager.swift
//  Instagram
//
//  Created by Yusuke Mitsugi on 2020/08/17.
//  Copyright © 2020 Yusuke Mitsugi. All rights reserved.
//

import FirebaseDatabase

public class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    
    
    public func canCreateNewUser(with email: String, username: String, completion: (Bool) -> Void) {
        completion(true)
    }
    
    
    
    public func insertNewUser(with email: String, username: String, completion: @escaping(Bool) -> Void) {
        let key = email.safeDatabaseKey()
        database.child(key).setValue(["username": username]) {error, _ in
            if error == nil {
                completion(true)
                return
            }
            else {
                completion(false)
                return
            }
        }
    }
    
    
   
}
