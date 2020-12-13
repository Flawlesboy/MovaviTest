//
//  NewsTableViewCell.swift
//  TestMovavi
//
//  Created by Загид Гусейнов on 12.12.2020.
//

import UIKit
import Kingfisher

class NewsTableViewCell: UITableViewCell {

  
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var aspectRatio: NSLayoutConstraint!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!    
   
    
    func processImage(image: UIImage) {
        let filter = UIImageSettings.shared.currentFilter
        DispatchQueue.global().async {
            let image = image.with(filter: filter)
            DispatchQueue.main.async {
                self.newsImageView.image = image
                self.activityIndicator.stopAnimating()
                self.activityIndicator.hidesWhenStopped = true
            }
        }
    }

    func configurationCell(news: Item) {
        self.titleLabel.text = news.title

        self.activityIndicator.startAnimating()
        if let url = URL(string: news.enclosure.url ) {            KingfisherManager.shared.retrieveImage(with: url) { [weak self] result in
                switch result {
                case .success(let value):
                    self?.processImage(image: value.image)
                case .failure(let error):
                    print(error)
                }
            }
        }
        
    }

}
