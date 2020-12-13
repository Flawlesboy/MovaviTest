//
//  CoreAssembly.swift
//  TestMovavi
//
//  Created by Загид Гусейнов on 13.12.2020.
//

import Foundation

protocol ICoreAssembly {
    var networkManager: InetworkManager { get }
}

class CoreAssembly: ICoreAssembly {
    lazy var networkManager: InetworkManager = NetworkManager()
    
}
