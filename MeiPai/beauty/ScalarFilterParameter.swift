//
//  ScalarFilterParameter.swift
//  MeiPai
//
//  Created by 永强 on 16/6/24.
//  Copyright © 2016年 wyq. All rights reserved.
//

struct ScalarFilterParameter
{
    var name: String?
    var key: String
    var minimumValue: Float?
    var maximumValue: Float?
    var currentValue: Float

    init(key: String, value: Float) {
        self.key = key
        self.currentValue = value
    }

    init(name: String, key: String, minimumValue: Float, maximumValue: Float, currentValue: Float)
    {
        self.name = name
        self.key = key
        self.minimumValue = minimumValue
        self.maximumValue = maximumValue
        self.currentValue = currentValue
    }
}
