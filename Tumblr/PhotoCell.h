//
//  PhotoCell.h
//  Tumblr
//
//  Created by atalwar98 on 6/27/19.
//  Copyright © 2019 atalwar98. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PhotoCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *photoView;
@property (weak, nonatomic) IBOutlet UILabel *dataLabel;


@end

NS_ASSUME_NONNULL_END
