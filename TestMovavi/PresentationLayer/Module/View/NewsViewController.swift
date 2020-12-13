//
//  ViewController.swift
//  TestMovavi
//
//  Created by Загид Гусейнов on 11.12.2020.
//

import UIKit

class NewsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var output: NewsViewOutput!
    var newsDataSource: NewsDataSource!
    @IBAction func ChromeFilter(_ sender: Any) {
        UIImageSettings.shared.currentFilter = .Process
        tableView.reloadData()
        
    }
    
    @IBAction func fadeFilter(_ sender: Any) {
        UIImageSettings.shared.currentFilter = .Mono
        tableView.reloadData()
    }
    
    @IBAction func monoFilter(_ sender: Any) {
        UIImageSettings.shared.currentFilter = .Instant
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        
    }
}

extension NewsViewController: NewsViewInput {
    func setupInitialState() {
        newsDataSource.configure(tableView: tableView)
    }
    
    func show(news: [NewsModel]) {        
        newsDataSource.show(news: news)
    }
}

