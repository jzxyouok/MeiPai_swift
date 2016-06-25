//
//  SSGPUImageBeautyFilter.h
//  MeiPai
//
//  Created by 永强 on 16/6/24.
//  Copyright © 2016年 wyq. All rights reserved.
//

#import "GPUImage.h"
@class GPUImageCombinationFilter;
@interface SSGPUImageBeautyFilter : GPUImageFilterGroup {
    GPUImageBilateralFilter *bilateralFilter;           //face
    GPUImageCannyEdgeDetectionFilter *cannyEdgeFilter;  //edge
    GPUImageCombinationFilter *combinationFilter;       //combine
    GPUImageHSBFilter *hsbFilter;                       //HSB
}
@end
