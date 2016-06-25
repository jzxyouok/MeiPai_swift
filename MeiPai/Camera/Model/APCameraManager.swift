//
//  APCameraManager.swift
//  MeiPai
//
//  Created by 永强 on 16/6/24.
//  Copyright © 2016年 wyq. All rights reserved.
//

import UIKit

protocol APCameraManagerDelegate {
    
}

class APCameraManager: GPUImageStillCamera {
    
    var cameraManagerDelegate: APCameraManagerDelegate?
    
    init(preset: String, cameraPosition: AVCaptureDevicePosition) {
        super.init(sessionPreset: preset, cameraPosition: cameraPosition)
        self.horizontallyMirrorRearFacingCamera = true
    }
}
