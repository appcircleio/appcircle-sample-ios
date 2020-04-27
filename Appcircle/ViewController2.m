//
//  ViewController2.m
//  Appcircle
//
//  Created by Dogan Ekici on 5.11.2019.
//  Copyright © 2019 Dogan Ekici. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.lblVersion.text =  [NSString stringWithFormat:@"v%@",[[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"]];
    self.lblApi.text = [NSString stringWithFormat:@"Api URL: %@\nApi KEY: %@",[[NSBundle mainBundle] objectForInfoDictionaryKey:@"API_URL"],[[NSBundle mainBundle] objectForInfoDictionaryKey:@"API_KEY"]];
    // Do any additional setup after loading the view.
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
