//
//  TestModelCell.h
//  DataSource
//
//  Created by lightman on 15/10/12.
//  Copyright (c) 2015年 lightman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TestModelCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

+ (UINib *)nib;

@end
