//
//  Result.swift
//  TestMovavi
//
//  Created by Загид Гусейнов on 11.12.2020.
//

import Foundation

enum Result<T> {
    case succes(T)
    case error(String)
}
