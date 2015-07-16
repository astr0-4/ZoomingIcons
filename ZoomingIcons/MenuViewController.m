//
//  MenuViewController.m
//  
//
//  Created by Alex on 2015-07-16.
//
//

#import "MenuViewController.h"
#import "SocialItemCell.h"
#import "SocialItem.h"

@interface MenuViewController ()
@property (nonatomic, strong) NSMutableArray *socialItems;

@end

@implementation MenuViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    self.socialItems = [[NSMutableArray alloc] init];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.contentInset = UIEdgeInsetsMake(20.0, 0, 0, 0);
    SocialItem *socialItem1 = [[SocialItem alloc] initWithImage:[UIImage imageNamed:@"icon-twitter"] :[UIColor colorWithRed:0.255 green:0.557 blue:0.910 alpha:1.0] name:@"Twitter" summary:@"Twitter is an online social networking service that enables users to send and read short 140-character messages called \"tweets\"."];
    [self.socialItems addObject:socialItem1];
    
    SocialItem *socialItem2 = [[SocialItem alloc] initWithImage:[UIImage imageNamed:@"icon-facebook"] :[UIColor colorWithRed:0.239 green:0.353 blue:0.588 alpha:1] name:@"Facebook" summary:@"Facebook (formerly thefacebook) is an online social networking service headquartered in Menlo Park, California. Its name comes from a colloquialism for the directory given to students at some American universities."];
    [self.socialItems addObject:socialItem2];
    
    SocialItem *socialItem3 =[[SocialItem alloc] initWithImage:[UIImage imageNamed:@"icon-youtube"] :[UIColor colorWithRed:0.729 green:0.188 blue:0.180 alpha:1.0] name:@"Youtube" summary:@"YouTube is a video-sharing website headquartered in San Bruno, California. The service was created by three former PayPal employees in February 2005 and has been owned by Google since late 2006. The site allows users to upload, view, and share videos."];
    [self.socialItems addObject:socialItem3];
    
    SocialItem *socialItem4 = [[SocialItem alloc] initWithImage:[UIImage imageNamed:@"icon-vimeo"] :[UIColor colorWithRed:0.329 green:0.737 blue:0.988 alpha:1.0] name:@"Vimeo"  summary:@"Vimeo is a U.S.-based video-sharing website on which users can upload, share and view videos. Vimeo was founded in November 2004 by Jake Lodwick and Zach Klein."];
    [self.socialItems addObject:socialItem4];
    
    SocialItem *socialItem5 = [[SocialItem alloc] initWithImage:[UIImage imageNamed:@"icon-instagram"] :[UIColor colorWithRed:0.325 green:0.498 blue:0.635 alpha:1] name: @"Instagram" summary:@"Instagram is an online mobile photo-sharing, video-sharing and social networking service that enables its users to take pictures and videos, and share them on a variety of social networking platforms, such as Facebook, Twitter, Tumblr and Flickr."];
    [self.socialItems addObject:socialItem5];
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 2;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if(section == 0) {
        return 2;
    }
    else {
        
        return 3;
    }
}

- (SocialItemCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    SocialItemCell *socialItemCell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    for(SocialItem *socialItem in self.socialItems) {
        socialItemCell.imageView.image = socialItem.image;
        socialItemCell.viewColor.backgroundColor = socialItem.color;
    }
    
   // socialItemCell.backgroundColor = [UIColor redColor];
       return socialItemCell;
}

#pragma mark <UICollectionViewDelegate>

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    CGFloat cellSpacing = ((UICollectionViewFlowLayout *) collectionViewLayout).minimumLineSpacing;
    
    CGFloat cellWidth = ((UICollectionViewFlowLayout *) collectionViewLayout).itemSize.width;
    NSInteger cellCount = [collectionView numberOfItemsInSection:section];
    CGFloat inset = (collectionView.bounds.size.width - (cellCount * (cellWidth + cellSpacing)))/2;
   // inset = MAX(inset, 0.0);
    return UIEdgeInsetsMake(30, inset, 30, inset);
}

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
