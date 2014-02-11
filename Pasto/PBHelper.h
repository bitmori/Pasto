//
//  PBHelper.h
//  Pasto
//
//  Created by Ke Yang on 10/2/13.
//  Copyright (c) 2013 Pyrus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PBHelper : NSObject

+ (NSString *)urlEncode:(NSString *) url;
+ (NSDictionary *) PBSyntaxDict;
+ (NSDictionary *) PBTimeDict;
@end
