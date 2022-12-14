//
//  SPSeperatorCell.m
//  ZWTUIKit
//
//  Created by shisuping on 2022/5/19.
//

#import "SPSeperatorCell.h"
#import "Masonry.h"
#import "SPCommonDefine.h"

@implementation SPSeperatorCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.seperatorView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.bottom.mas_offset(0);
            make.height.mas_equalTo(0.5);
        }];
    }
    return self;
}

- (UIView *)seperatorView{
    if (!_seperatorView) {
        _seperatorView = [UIView new];
        _seperatorView.backgroundColor = SPUIColorFromRGB(0xEEEEEE);
        [self.contentView addSubview:_seperatorView];
    }
    return _seperatorView;
}
@end
