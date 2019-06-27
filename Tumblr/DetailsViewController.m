//
//  DetailsViewController.m
//  Tumblr
//
//  Created by atalwar98 on 6/27/19.
//  Copyright © 2019 atalwar98. All rights reserved.
//

#import "DetailsViewController.h"
#import "UIImageView+AFNetworking.h"

@interface DetailsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UIImageView *photoView;

@property (weak, nonatomic) IBOutlet UILabel *captionLabel;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray *photos = self.post[@"photos"];
    if(photos){
        // 1. Get the first photo in the photos array
        NSDictionary *photo = photos[0];
        
        // 2. Get the original size dictionary from the photo
        NSDictionary *originalSize =  photo[@"original_size"];
        
        // 3. Get the url string from the original size dictionary
        NSString *urlString = originalSize[@"url"];
        
        // 4. Create a URL using the urlString
        NSURL *url = [NSURL URLWithString:urlString];
        
        [self.photoView setImageWithURL:url];
        
        NSString *date = self.post[@"date"];
        self.dateLabel.text = date;
        
        NSString *caption = self.post[@"caption"];
        NSString *caption2 =[caption stringByReplacingOccurrencesOfString:@"<p>" withString:@""];
        NSString *caption3 =[caption2 stringByReplacingOccurrencesOfString:@"</p>" withString:@""];
        NSString *caption4 =[caption3 stringByReplacingOccurrencesOfString:@"<br>" withString:@""];
        NSString *caption5 =[caption4 stringByReplacingOccurrencesOfString:@"<br/>" withString:@""];
        NSString *caption6 =[caption5 stringByReplacingOccurrencesOfString:@"<br />" withString:@""];
        self.captionLabel.text = caption6;
    }
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
