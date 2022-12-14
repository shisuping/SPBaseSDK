//
//  SPFunction.m
//  ZWTUIKit
//
//  Created by shisuping on 2022/4/11.
//

#import "SPFunction.h"

@implementation SPFunction
+ (BOOL)isValidArray:(NSArray *)a{
    if ([a isKindOfClass:[NSArray class]] && a.count) {
        return YES;
    }
    return NO;
}
+ (BOOL)isValidDictionary:(NSDictionary *)d{
    if ([d isKindOfClass:[NSDictionary class]]) {
        return YES;
    }
    return NO;
}
+ (BOOL)isValidString:(NSString *)s{
    if ([s isKindOfClass:[NSString class]] && s.length) {
        return YES;
    }
    return NO;
}

+ (id)objectFromString:(NSString *)jsonString{
    if (!isValidString(jsonString)) {
        return nil;
    }
    NSError *error = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]
                                                    options:NSJSONReadingFragmentsAllowed
                                                      error:&error];
    if (error) {
        return nil;
    }
    if ([NSJSONSerialization isValidJSONObject:jsonObject]) {
        return jsonObject;
    }
    return nil;
}

@end
//
//#define INLINE    static inline
//////不支持inline时：
////#define INLINE    static
//#define ISCLASS(Class,obj)[obj isKindOfClass:[Class class]]
//INLINE BOOL isValidArray(NSArray *a)
//{
//    return (a && ISCLASS(NSArray, a) && a.count>0)?YES:NO;
//}
////判断字典是否合法
//INLINE BOOL isValidDictionary(NSDictionary *d)
//{
//    return (d && ISCLASS(NSDictionary, d))?YES:NO;
//}
////判断字符串是否合法
//INLINE BOOL isValidString(NSString *s)
//{
//    return (s && ISCLASS(NSString, s) && [s length]>0)?YES:NO;
//}
//
////判断Number是否合法
//INLINE BOOL isValidNumber(id n)
//{
//    return (n && ISCLASS(NSNumber, n))?YES:NO;
//}
//
////判断Object是否合法
//INLINE BOOL isValidObject(id n)
//{
//    return ((n == nil) || ([n isEqual:[NSNull null]]))?NO:YES;
//}
