//
//  SecondViewController.m
//  控制器之间的传值
//
//  Created by User on 15/11/8.
//  Copyright © 2015年 User. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *secondLable;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
}

-(void)viewWillAppear:(BOOL)animated
{
  
    [super viewWillAppear:animated];
    
    if (self.secondLable.text != 0) {
        
        
        NSLog(@"我已经有了");
        
       
        
    }else{
        
         NSLog(@"=========%@",self.secondLable.text);
        
    }

    self.secondLable.text = self.string;

}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated ];
    
    self.secondLable.text = @"";
    
    NSLog(@"我是控制器要销毁的过程中%@",self.secondLable.text);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
