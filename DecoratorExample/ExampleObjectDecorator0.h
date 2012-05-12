//
//  ExampleObjectDecorator0.h
//  DecoratorExample
//
//  Created by Ryan Tsukamoto on 5/11/12.
//  Copyright (c) 2012 Miso Media Inc. All rights reserved.
//

#import "ExampleObjectDecorator.h"

@interface ExampleObjectDecorator0 : ExampleObjectDecorator

@property	(nonatomic, readonly, strong)	NSArray* array;

-(id)initWithString:(NSString*)string number:(NSNumber*)number array:(NSArray*)array;

-(id)initWithExampleObject:(ExampleObject *)exampleObject array:(NSArray*)array;

-(void)methodUniqueToDecorator0;

-(void)nonuniqueMethod;

@end
