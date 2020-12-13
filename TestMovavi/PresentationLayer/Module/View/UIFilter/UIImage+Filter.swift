//
//  UIImage + Filter.swift
//  TestMovavi
//
//  Created by Загид Гусейнов on 13.12.2020.
//

import Foundation
import UIKit

extension UIImage {
    
    func with(filter: FilterType) -> UIImage {
        if case .Normal = filter {
            return self
        }
        
        let filter = CIFilter(name: filter.rawValue)
        // convert UIImage to CIImage and set as input
        let ciInput = CIImage(image: self)
        filter?.setValue(ciInput, forKey: "inputImage")
        // get output CIImage, render as CGImage first to retain proper UIImage scale
        let ciOutput = filter?.outputImage
        let ciContext = CIContext()
        let cgImage = ciContext.createCGImage(ciOutput!, from: (ciOutput?.extent)!)
        //Return the image
        return UIImage(cgImage: cgImage!)
    }
}
