//
//  NewsSevice.swift
//  TestMovavi
//
//  Created by Загид Гусейнов on 11.12.2020.
//

import Foundation

protocol INewsService: class {
    func loadNews(complition: @escaping (Result<[NewsModel]>) -> Void)
    
}

class NewsService: INewsService {
    let networkManager = CoreAssembly().networkManager
    
    func loadNews(complition: @escaping (Result<[NewsModel]>) -> Void) {
        let newsRequest = NewsRequest()
        
        networkManager.perform(with: newsRequest) { (result: Result<[NewsModel]>) in
            switch result {
            case .succes(let newsResult):
                complition(Result.succes(newsResult))
            case .error(let error):
                complition(Result.error(error))
            }
        }
    }
    
    
}
