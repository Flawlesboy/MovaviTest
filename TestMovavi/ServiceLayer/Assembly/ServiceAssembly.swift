//
//  ServiceAssembly.swift
//  TestMovavi
//
//  Created by Загид Гусейнов on 13.12.2020.
//

import Foundation

protocol IServicesAssembly {
    var newsService: INewsService { get }
}

class ServicesAssembly: IServicesAssembly {
    lazy var newsService: INewsService = NewsService()    
}
