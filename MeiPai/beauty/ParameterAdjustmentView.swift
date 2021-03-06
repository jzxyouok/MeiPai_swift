//
//  ParameterAdjustmentView.swift
//  MeiPai
//
//  Created by 永强 on 16/6/24.
//  Copyright © 2016年 wyq. All rights reserved.
//

import UIKit

let kSliderMarginX: CGFloat = 20
let kSliderMarginY: CGFloat = 8
let kSliderHeight: CGFloat = 48

protocol ParameterAdjustmentDelegate {
    func parameterValueDidChange(param: ScalarFilterParameter)
}

class ParameterAdjustmentView: UIView {

    var parameters: [ScalarFilterParameter]!
    var sliderViews = [LabeledSliderView]()

    func setAdjustmentDelegate(delegate: ParameterAdjustmentDelegate) {
        for sliderView in sliderViews {
            sliderView.delegate = delegate
        }
    }

    init(frame: CGRect, parameters: [ScalarFilterParameter]) {
        super.init(frame: frame)

        self.parameters = parameters

        addSubviews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addSubviews() {
        var yOffset: CGFloat = 0
        for param in parameters {

            let frame = CGRectMake(kSliderMarginX, yOffset, bounds.size.width - kSliderMarginX*2, kSliderHeight)

            let sliderView = LabeledSliderView(frame: frame, parameter: param)
            addSubview(sliderView)

            sliderViews.append(sliderView)

            yOffset += (kSliderHeight + kSliderMarginY)
        }
    }
}

