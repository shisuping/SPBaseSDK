//
//  NSData+SP.m
//  ZWTUIKit
//
//  Created by shisuping on 2022/6/27.
//

#import "NSData+SP.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSData (SP)

- (BOOL)SP_isJPEG
{
    if (self.length > 4)
    {
        unsigned char buffer[4];
        [self getBytes:&buffer length:4];
        
        return buffer[0]==0xff &&
        buffer[1]==0xd8 &&
        buffer[2]==0xff &&
        buffer[3]==0xe0;
    }
    
    return NO;
}

- (BOOL)SP_isPNG
{
    if (self.length > 4)
    {
        unsigned char buffer[4];
        [self getBytes:&buffer length:4];
        
        return buffer[0]==0x89 &&
        buffer[1]==0x50 &&
        buffer[2]==0x4e &&
        buffer[3]==0x47;
    }
    
    return NO;
}

- (NSString *)SP_MD5String{
  //1: 创建一个MD5对象
  CC_MD5_CTX md5;
  //2: 初始化MD5
  CC_MD5_Init(&md5);
  //3: 准备MD5加密
  CC_MD5_Update(&md5, self.bytes, (CC_LONG)self.length);
  //4: 准备一个字符串数组, 存储MD5加密之后的数据
  unsigned char result[CC_MD5_DIGEST_LENGTH];
  //5: 结束MD5加密
  CC_MD5_Final(result, &md5);
  NSMutableString *resultString = [NSMutableString string];
  //6:从result数组中获取最终结果
  for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
      [resultString appendFormat:@"%02X", result[i]];
  }
  return resultString;
}
@end
