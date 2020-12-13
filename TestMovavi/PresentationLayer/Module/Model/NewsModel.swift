//
//  NewsModel.swift
//  TestMovavi
//
//  Created by Загид Гусейнов on 11.12.2020.
//

import Foundation

struct NewsModel: Codable {
    var item: [Item]
}

struct Item: Codable {
    var title: String
    var enclosure: Enclosure
}

struct Enclosure: Codable {
    var url: String
}
