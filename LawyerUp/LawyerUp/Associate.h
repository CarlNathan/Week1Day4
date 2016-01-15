//
//  Associate.h
//  LawyerUp
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Client.h"
#import "Lawyer.h"




@interface Associate : NSObject <AssociateDelegate>

@property (nonatomic, weak) id <AssociateDelegate> delegate;


@end

