//
//  SPFunction.h
//  ZWTUIKit
//
//  Created by shisuping on 2022/4/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
#define isValidString(s) [SPFunction isValidString:s]
#define isValidArray(a) [SPFunction isValidArray:a]
#define isValidDictionary(d) [SPFunction isValidDictionary:d]
#define objectFromString(s) [SPFunction objectFromString:s]
@interface SPFunction : NSObject
+ (BOOL)isValidArray:(NSArray *)a;
+ (BOOL)isValidDictionary:(NSDictionary *)d;
+ (BOOL)isValidString:(NSString *)s;

+ (id)objectFromString:(NSString *)jsonString;

@end
NS_ASSUME_NONNULL_END
