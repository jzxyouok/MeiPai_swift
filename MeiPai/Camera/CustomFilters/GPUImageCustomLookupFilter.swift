//
//  GPUImageCustomLookupFilter.swift
///  MeiPai
//
//  Created by 永强 on 16/6/24.
//  Copyright © 2016年 wyq. All rights reserved.
//

class GPUImageCustomLookupFilter: GPUImageFilterGroup {

    var lookupImageSource: GPUImagePicture?
    init(lookupImageName: String) {
        super.init()
        let image = UIImage(named: lookupImageName)
        self.lookupImageSource = GPUImagePicture.init(image: image)
        let lookupFilter = GPUImageLookupFilter.init()
        self.addTarget(lookupFilter)
        self.lookupImageSource?.addTarget(lookupFilter, atTextureLocation: 1)
        self.lookupImageSource?.processImage()
        self.initialFilters = [lookupFilter]
        self.terminalFilter = lookupFilter
    }
}
