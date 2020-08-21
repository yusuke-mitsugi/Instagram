//
//  StrageManager.swift
//  Instagram
//
//  Created by Yusuke Mitsugi on 2020/08/17.
//  Copyright © 2020 Yusuke Mitsugi. All rights reserved.
//

import FirebaseStorage

public class StorageManager {
    
    static let shared = StorageManager()
    
    private let bucket = Storage.storage().reference()
    
    public enum IGStorageManagerError: Error {
        case failedToDownload
    }
    
    public func uploadUserPhotoPost(model: UserPost, completion: @escaping(Result<URL, Error>) -> Void) {
        
    }
    
    public func downloadImage(with reference: String, completion: @escaping(Result<URL, IGStorageManagerError>) -> Void) {
        bucket.child(reference).downloadURL { (url, error) in
            guard let url = url, error == nil else {
                completion(.failure(.failedToDownload))
                return
            }
            completion(.success(url))
        }
    }
    
}
    
    enum UserPostType {
        case photo, video
    }
    
    public struct UserPost {
    
    }
    

