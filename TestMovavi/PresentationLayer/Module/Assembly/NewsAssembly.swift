//
//  NewsAssembly.swift
//  TestMovavi
//
//  Created by Загид Гусейнов on 12.12.2020.
//

import Foundation
import UIKit

class NewsAssembly {
    func view() -> UIViewController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NewsViewController") as! NewsViewController
        
        let presenter = NewsPresenter()
        let newsDataSource = NewsDataSource()
        
        view.output = presenter
        view.newsDataSource = newsDataSource
        presenter.view = view
        presenter.newsService = ServicesAssembly().newsService
        
        return view
    }
}

