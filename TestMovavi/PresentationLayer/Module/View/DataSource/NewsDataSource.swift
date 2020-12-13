//
//  NewsDataSource.swift
//  TestMovavi
//
//  Created by Загид Гусейнов on 12.12.2020.
//

import Foundation
import UIKit

class NewsDataSource: NSObject {
    
    var newsArray = [Item]()
    
    var tableView: UITableView!
    
    func configure(tableView: UITableView) {
        self.tableView = tableView
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func show(news: [NewsModel]) {
        if let news = news.first?.item {
            self.newsArray = news
        }
        
        tableView.reloadData()
    }    
}


extension NewsDataSource: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! NewsTableViewCell
        
        let news = newsArray[indexPath.row]
        cell.configurationCell(news: news)
        
        return cell
    }    
}
