//
//  ImageModel.swift
//  MeiPai
//
//  Created by 永强 on 16/6/24.
//  Copyright © 2016年 wyq. All rights reserved.
//

import UIKit

let kCurrentImage = "currentImage"
class ImageModel: NSObject {
    
    var rawImage: UIImage?
    dynamic var currentImage: UIImage?
    var scaledImage: UIImage?
    
    static let sharedInstance = ImageModel()
}

