//
//  ZCQImageManager.m
//  ZcqComponets
//
//  Created by 郑创权 on 2022/10/17.
//

#import "ZCQImageManager.h"

@implementation ZCQImageManager

+ (UIImage *)imageWithBundleName:(NSString*)bundleName
                       imageName:(NSString*)imageName{
    NSBundle* frameBundle = [NSBundle bundleForClass:[self class]];
    NSString* ZcqComponetsPath = [frameBundle pathForResource:@"ZcqComponets" ofType:@"bundle"];
    NSBundle* ZcqComponetsPathBundle = [NSBundle bundleWithPath:ZcqComponetsPath];
    NSString* ZCQImagesPathBundlePathStr = [ZcqComponetsPathBundle pathForResource:@"ZCQImages" ofType:@"bundle"];
    NSLog(@"ZCQImagesPathBundlePathStr : %@",ZCQImagesPathBundlePathStr);
    // 获取当前bundle的名称
    NSBundle* targetBundle = [NSBundle bundleWithPath:ZCQImagesPathBundlePathStr];
    UIImage* image = [UIImage imageNamed:imageName
                                inBundle:targetBundle
           compatibleWithTraitCollection:nil];
    return image;
}

@end
