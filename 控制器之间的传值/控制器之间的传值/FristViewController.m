//
//  FristViewController.m
//  控制器之间的传值
//
//  Created by User on 15/11/8.
//  Copyright © 2015年 User. All rights reserved.
//

#import "FristViewController.h"
#import "SecondViewController.h"
@interface FristViewController ()


@property (weak, nonatomic) IBOutlet UILabel *firstLable;


@end

@implementation FristViewController
- (IBAction)senderClick:(id)sender {
    
    SecondViewController *secondVc = [self.tabBarController.viewControllers objectAtIndex:1];
    
    secondVc.string = self.firstLable.text;
    
    
    NSLog(@"%@",self.firstLable.text);
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
     
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
