//
//  SPCommonDefine.h
//  SPBaseSDK
//
//  Created by shisuping on 2022/3/2.
//

#ifndef SPCommonDefine_h
#define SPCommonDefine_h

#define SPAreaBottomHeight \
({NSInteger areaBottomHeight = 0;\
if (@available(iOS 11.0, *)) {\
areaBottomHeight = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom;\
}\
(areaBottomHeight);})

#define SPUIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define SPUIColorFromRGBA(rgbValue,alhpaValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:alhpaValue]

#define SP_SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SP_SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#define SP_STATUSBAR_HEIGHT ([[UIApplication sharedApplication]statusBarFrame].size.height)
#define SP_NAVIGATIONBAR_HEIGHT (44.0)

#endif /* SPCommonDefine_h */
