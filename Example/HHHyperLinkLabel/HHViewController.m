//
//  HHViewController.m
//  HHHyperLinkLabel
//
//  Created by huanghehg on 06/03/2017.
//  Copyright (c) 2017 huanghehg. All rights reserved.
//

#import "HHViewController.h"
#import <HHHyperLinkLabel/HHHyperLinkLabel.h>
#import "Masonry.h"
#import "HHFrameParser.h"
#import "HHCoreTextData.h"

@interface HHViewController ()

@end

@implementation HHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    HHHyperLinkLabel *linkLabel = [[HHHyperLinkLabel alloc] init];
    linkLabel.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:linkLabel];
    
    [linkLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.left.equalTo(self.view).offset(10);
        make.right.equalTo(self.view).offset(-10);
        make.height.equalTo(@100);
    }];
    [linkLabel setNeedsLayout];
    [linkLabel layoutIfNeeded];

    
    NSMutableParagraphStyle *para = [[NSMutableParagraphStyle alloc] init];
    para.lineSpacing = 10;
    
    
    NSAttributedString *string = [[NSAttributedString alloc] initWithString:@"我要点击的地方戳一下我要点击的地方戳一下我要点击的地方戳一下我要点击的地方戳一下我要点击的地方戳一下我要点击的地方戳一下我要点击的地方戳一下我要点击的地方戳一下" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12],
                                                                                                       NSForegroundColorAttributeName:[UIColor redColor],NSParagraphStyleAttributeName:para}];
    HHCoreTextData *data = [HHFrameParser frameParserWithAttributedString:string width:self.view.bounds.size.width - 20];
    linkLabel.data = data;
    [linkLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@(data.height));
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
