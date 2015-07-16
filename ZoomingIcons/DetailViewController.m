//
//  DetailViewController.m
//  ZoomingIcons
//
//  Created by Alex on 2015-07-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import "DetailViewController.h"


@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *socialImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *summaryLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameLabel.text = self.socialItem.name;
    self.socialImageView.image = self.socialItem.image;
    self.summaryLabel.text = self.socialItem.summary;
    self.view.backgroundColor = self.socialItem.color;
    self.nameLabel.textColor = [UIColor whiteColor];
    self.summaryLabel.textColor = [UIColor whiteColor];
    self.socialImageView.backgroundColor = self.socialItem.color;
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
- (IBAction)backButtonPressed:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

@end
