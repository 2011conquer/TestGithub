//
//  GRViewController.m
//  Calculator2
//
//  Created by the9 on 14-4-23.
//  Copyright (c) 2014年 ZhangGruorui. All rights reserved.
//

#import "GRViewController.h"

@interface GRViewController ()

@end

@implementation GRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.num1 = [NSMutableString string];
    self.num2 = [NSMutableString string];
    self.opt = None;
    self.isDeng = false;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)action:(id)sender {
    int tag = [sender tag];
    if (self.opt==None || self.isDeng ==YES) {
        
        [self.num1 appendFormat:@"%d",tag];
        self.result.text = self.num1;
    }
    else
    {
        [self.num2 appendFormat:@"%d",tag];
        self.result.text = self.num2;
    }
    
}

- (IBAction)optClick:(id)sender {
    int tag=[sender tag];
    if(tag>0 && tag <5)
    {
        if (self.isDeng ==NO)
        {
        float temp = 0;
        switch (self.opt) {
            case Jia:
                temp=[self.num1 intValue]+[self.num2 intValue];
                break;
            case Jian:
                temp=[self.num1 intValue]-[self.num2 intValue];
                break;
            case Cheng:
                temp=[self.num1 intValue]*[self.num2 intValue];
                break;
            case Chu:
                temp=[self.num1 intValue]/[self.num2 intValue];
                break;
            default:
                break;
        }
        self.num1= [NSMutableString stringWithFormat:@"%f",temp];
           
        }
        else{
            self.num2 = [NSMutableString string];
        }
        self.result.text = self.num1;
        self.opt=tag;
    }else
    {
        if (self.opt!=None || self.isDeng==YES)
        {
            
        }
    }
}
@end
