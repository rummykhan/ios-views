//
//  DataManager.swift
//  TestLayouts
//
//  Created by Rummy Khan on 9/10/18.
//  Copyright © 2018 Rummy Khan. All rights reserved.
//

import Foundation


class DataManager {
    
    static func getData() -> [Dictionary<String, String>] {
        var data : [Dictionary<String, String>] = []
        
        var dictionary : Dictionary<String, String> = [:]
        dictionary["icon"] = "app-veyor.png"
        dictionary["name"] = "AppVeyor"
        dictionary["description"] = "Windows developers use AppVeyor to continuously run their tests and deploy apps to cloud or on-premise environments."
        
        data.append(dictionary)
        
        dictionary["icon"] = "circle-ci.png"
        dictionary["name"] = "CircleCI"
        dictionary["description"] = "Let CircleCI help your team focus on making a great product. Speed up your test and development cycle to improve productivity, with no maintenance of your build and test setup."
        
        data.append(dictionary)
        
        dictionary["icon"] = "code-cov.png"
        dictionary["name"] = "Codecov"
        dictionary["description"] = "Codecov provides highly integrated tools to group, merge, archive and compare coverage reports. Whether your team is comparing changes in a pull request or reviewing a single commit, Codecov will improve the code review workflow and quality."
        
        data.append(dictionary)
        
        dictionary["icon"] = "code-tree.png"
        dictionary["name"] = "Codetree"
        dictionary["description"] = "Codetree is a lightweight project management app with terrific support for multi-repo projects. There's nothing to install and it works in every browser."
        
        data.append(dictionary)
        
        dictionary["icon"] = "roll-bar.png"
        dictionary["name"] = "Rollbar"
        dictionary["description"] = "Rollbar provides real-time, full-stack exception reporting and debugging tools for developers. Rollbar integrates in moments with apps built in JavaScript, Ruby, Python, PHP, Node.js, Android, iOS, Go, Java, .NET and more."
        
        data.append(dictionary)
        
        dictionary["icon"] = "zen-hub.png"
        dictionary["name"] = "Zenhub"
        dictionary["description"] = "ZenHub is the only project management tool that integrates natively within GitHub’s user interface."
        
        data.append(dictionary)
        
        return data
    }
    
}
