//
//  Perscription.h
//  PatientAndDoctor
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Perscription : NSObject

@property (nonatomic) NSString *name;

+ (instancetype) perscriptionWithName: (NSString *) name;
    

@end
