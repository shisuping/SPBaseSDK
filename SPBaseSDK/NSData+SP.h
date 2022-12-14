//
//  NSData+SP.h
//  ZWTUIKit
//
//  Created by shisuping on 2022/6/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (SP)

- (BOOL)SP_isJPEG;

- (BOOL)SP_isPNG;

- (NSString *)SP_MD5String;

@end

NS_ASSUME_NONNULL_END
