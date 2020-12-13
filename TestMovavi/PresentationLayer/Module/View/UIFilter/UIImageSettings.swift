//
//  UIImageSettings.swift
//  TestMovavi
//
//  Created by Загид Гусейнов on 13.12.2020.
//

import Foundation

class UIImageSettings {
    
    private init() {}
    
    static var shared = UIImageSettings()
    
    var currentFilter: FilterType = .Normal
}
