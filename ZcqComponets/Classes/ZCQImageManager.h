//
//  ZCQImageManager.h
//  ZcqComponets
//
//  Created by 郑创权 on 2022/10/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZCQImageManager : NSObject


+ (UIImage *)imageWithBundleName:(NSString*)bundleName
                       imageName:(NSString*)imageName;
@end

NS_ASSUME_NONNULL_END
