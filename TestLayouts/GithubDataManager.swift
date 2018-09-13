//
//  GithubDataManager.swift
//  TestLayouts
//
//  Created by Rummy Khan on 9/13/18.
//  Copyright © 2018 Rummy Khan. All rights reserved.
//

import Foundation


class GithubDataManager{
    
    static func getData() -> [Dictionary<String, Any>?]?{
        if let path = Bundle.main.path(forResource: "users", ofType: "json") {
            do {
                
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                
                if let jsonResult = jsonResult as? [Dictionary<String, Any>?]{
                    return jsonResult
                }
            } catch {
            }
        }
        return nil
    }
    
    
    
}
