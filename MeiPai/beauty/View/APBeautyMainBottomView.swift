//
//  APBeautyMainBottomView.swift
//  MeiPai
//
//  Created by 永强 on 16/6/24.
//  Copyright © 2016年 wyq. All rights reserved.
//

import UIKit

let kBeautyMainBottomButtonCount: Int = 4
let kBeautyMainBottomButtomWidth: CGFloat = (kScreenWidth - 20)/4

protocol APBeautyMainBottomViewDelegate {
    func beautyBottomButtonPressed(sender: UIButton)
}

class APBeautyMainBottomView: UIView {

    private var bottomScrollView: UIScrollView!
    var apBeautyMainBottomViewdelegate: APBeautyMainBottomViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initViews()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)!
    }
    
    //MARK: - event response
    func bottomButtonPressed(sender: UIButton) {
        self.apBeautyMainBottomViewdelegate?.beautyBottomButtonPressed(sender)
    }
    
    //MARK: - private method
    private func initViews() {
        self.addScrollView()
        self.addButtons()
    }
    
    private func addScrollView() {
        self.bottomScrollView = UIScrollView.init(frame: self.bounds)
        self.bottomScrollView.showsVerticalScrollIndicator = false
        self.bottomScrollView.showsHorizontalScrollIndicator = false
        self.bottomScrollView.contentSize = CGSizeMake(CGFloat(kBeautyMainBottomButtonCount) * kBeautyMainBottomButtomWidth, self.height)
        self.addSubview(self.bottomScrollView)
    }
    
    private func addButtons() {
         let normalNameArray = APBottomButtonModel.normalNameArray
        let pressNameArray = APBottomButtonModel.pressNameArray
        let buttonTitle = APBottomButtonModel.buttonTitle
        for index in 0...kBeautyMainBottomButtonCount - 1 {
            let button = YYButton.init(frame: CGRectMake(CGFloat(index) * kBeautyMainBottomButtomWidth, 0, kBeautyMainBottomButtomWidth, self.height), type: SSButtonType.Bottom, normalImageName: normalNameArray[index], pressImageName: pressNameArray[index])
            button.tag = kBeautyMainBottomButtonStartTag + index
            button.setTitle(buttonTitle[index], forState: UIControlState.Normal)
            button.addTarget(self, action: #selector(APBeautyMainBottomView.bottomButtonPressed(_:)), forControlEvents: UIControlEvents.TouchUpInside)
            self.bottomScrollView.addSubview(button)
        }
    }
}
