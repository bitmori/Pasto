//
//  PBHTMLSerializer.m
//  Pasto
//
//  Created by Ke Yang on 10/2/13.
//  Copyright (c) 2013 Pyrus. All rights reserved.
//

#import "PBHTMLSerializer.h"

@implementation PBHTMLSerializer

+ (instancetype)serializer {
    PBHTMLSerializer *serializer = [[self alloc] init];
    
    return serializer;
}

- (instancetype)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.acceptableContentTypes = [[NSSet alloc] initWithObjects:@"text/plain", @"text/html", nil];
    
    return self;
}

- (id)responseObjectForResponse:(NSHTTPURLResponse *)response
                           data:(NSData *)data
                          error:(NSError *__autoreleasing *)error
{
    if (![self validateResponse:(NSHTTPURLResponse *)response data:data error:error]) {
        if ([(NSError *)(*error) code] == NSURLErrorCannotDecodeContentData) {
            return nil;
        }
    }
    
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

@end
