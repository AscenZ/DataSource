//
//  testModelCell+ConfigureForPhoto.m
//  DataSource
//
//  Created by lightman on 15/10/13.
//  Copyright © 2015年 lightman. All rights reserved.
//

#import "TestModelCell+SetName.h"
#import "TestModel.h"


@implementation TestModelCell (SetName)

- (void)setName:(TestModel *)model
{
    self.nameLabel.text = model.name;
}

@end
