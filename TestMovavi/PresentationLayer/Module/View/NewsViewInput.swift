//
//  NewsViewInput.swift
//  TestMovavi
//
//  Created by Загид Гусейнов on 11.12.2020.
//

import Foundation

protocol NewsViewInput: class {
    func show(news: [NewsModel])
    func setupInitialState()
}
