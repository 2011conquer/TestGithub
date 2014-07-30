//
//  GRViewController.h
//  Calculator2
//
//  Created by the9 on 14-4-23.
//  Copyright (c) 2014年 ZhangGruorui. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum
{
    None,Jia,Jian,Cheng,Chu
} Opt;

@interface GRViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *result;

@property(nonatomic,strong)NSMutableString *num1;
@property(nonatomic,strong)NSMutableString *num2;

- (IBAction)action:(id)sender;
- (IBAction)optClick:(id)sender;
@property Opt opt;
@property BOOL isDeng;

@end
