//
//  ViewController.swift
//  MeiPai
//
//  Created by 永强 on 16/6/24.
//  Copyright © 2016年 wyq. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = true
        self.view.backgroundColor = UIColor.whiteColor()
        // Do any additional setup after loading the view, typically from a nib.
        let cameraButtonPressed = UIButton.init(type: .Custom)
        cameraButtonPressed.frame = CGRectMake(100, 100, 100, 40)
        cameraButtonPressed.backgroundColor = UIColor.redColor()
        cameraButtonPressed.setTitle("拍照", forState: .Normal)
        cameraButtonPressed.addTarget(self, action: #selector(ViewController.cameraButtonPressed), forControlEvents: .TouchUpInside)
        self.view.addSubview(cameraButtonPressed)

        let beautyButtonPressed = UIButton.init(type: .Custom)
        beautyButtonPressed.frame = CGRectMake(100, cameraButtonPressed.bottom+20, 100, 40)
        beautyButtonPressed.backgroundColor = UIColor.redColor()
        beautyButtonPressed.setTitle("处理图片", forState: .Normal)
        beautyButtonPressed.addTarget(self, action: #selector(ViewController.beautyButtonPressed), forControlEvents: .TouchUpInside)
        self.view.addSubview(beautyButtonPressed)

//        let videoButtonPressed = UIButton.init(type: .Custom)
//        videoButtonPressed.frame = CGRectMake(100, beautyButtonPressed.bottom+20, 100, 40)
//        videoButtonPressed.backgroundColor = UIColor.redColor()
//        videoButtonPressed.setTitle("视频", forState: .Normal)
//        videoButtonPressed.addTarget(self, action: #selector(ViewController.videoButtonPressed), forControlEvents: .TouchUpInside)
//        self.view.addSubview(videoButtonPressed)
    }
//    func videoButtonPressed() {
//
//    }
    func cameraButtonPressed() {
        let cameraVC = APCameraMainViewController()
        self.navigationController?.pushViewController(cameraVC, animated: true)
    }

    func beautyButtonPressed() {
        let picker = UIImagePickerController.init()
        picker.delegate = self
        picker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        self.presentViewController(picker, animated: true, completion: {})
    }

    func imagePickerController(picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : AnyObject]) {

        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        ImageModel.sharedInstance.rawImage = image
        ImageModel.sharedInstance.currentImage = image
        let beautyMainVC = APBeautyMainViewController.init()
        self.navigationController?.pushViewController(beautyMainVC, animated: true)
        picker.dismissViewControllerAnimated(true, completion: {
            () -> Void in

        })


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

