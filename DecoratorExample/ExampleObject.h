//
//  ExampleObject.h
//  DecoratorExample
//
//  Created by Ryan Tsukamoto on 5/11/12.
//  Copyright (c) 2012 Miso Media Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

//!	An example class.
@interface ExampleObject : NSObject

@property	(nonatomic, readonly, strong)	NSString*	string;
@property	(nonatomic, readonly, strong)	NSNumber*	number;

-(id)initWithString:(NSString*)string number:(NSNumber*)number;

-(NSString*)stringMethod;

-(NSString*)decorators;

-(NSString*)stringValue;

@end
