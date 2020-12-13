//
//  NewsPresenter.swift
//  TestMovavi
//
//  Created by Загид Гусейнов on 11.12.2020.
//

import Foundation

class NewsPresenter {
    
    weak var view: NewsViewInput!
    var newsService: INewsService!    
    
    func loadNews() {
        newsService.loadNews { [weak self] (result: Result<[NewsModel]> ) in
            switch result {
            case .succes(let news):
                DispatchQueue.main.async {                    
                    self?.view.show(news: news)
                    
                }
            case .error(let error):
                print("\(error) not data")
            }
            
        }
    }
    
}

extension NewsPresenter: NewsViewOutput {
    func viewIsReady() {
        view.setupInitialState()
        loadNews()
    }
    
}
