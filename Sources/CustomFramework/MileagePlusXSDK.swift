//
//  MileagePlusXSDK.swift
//  MPXSDKSample
//
//  Created by Jung-Hoon Shin on 11/6/23.
//

import Foundation

public struct MileagePlusXSDK {
    
    private static var isAPIKeyValid = false
    
    private static let apiKeys = [
        "privateKey123"
    ]
    
    private static func checkAPIKey() -> Bool {
        if !isAPIKeyValid {
            print("Please provide a valid API Key")
        }
        return isAPIKeyValid
    }
    
    public static func configure(apiKey: String) {
        isAPIKeyValid = apiKeys.contains(apiKey)
    }
    
    public static func doSomeWork() {
        guard checkAPIKey() else { return }
        print("Doing some work...")
    }
    
}