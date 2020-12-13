//
//  NewsRequest.swift
//  TestMovavi
//
//  Created by Загид Гусейнов on 11.12.2020.
//

import Foundation

class NewsRequest: IRequest {
    
    private let baseUrl = "https://lenta.ru/rss/articles"
    
    var urlRequest: URLRequest? {
        if let url = URL(string: baseUrl) {
            return URLRequest(url: url)
        }
        return nil
    }
    
}
