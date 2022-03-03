//
//  Profile.swift
//  Landmarks
//
//  Created by Ana Carolina Martins Pessoa on 02/03/22.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username:  "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍁"
        case winter = "❄️"
        
        var id: String { rawValue }
    }
}
