//
//  ExampleObjectDecorator1.h
//  DecoratorExample
//
//  Created by Ryan Tsukamoto on 5/11/12.
//  Copyright (c) 2012 Miso Media Inc. All rights reserved.
//

#import "ExampleObjectDecorator.h"

@interface ExampleObjectDecorator1 : ExampleObjectDecorator

@property	(nonatomic, readonly, strong)	NSDictionary*	dictionary;

-(id)initWithString:(NSString*)string number:(NSNumber*)number dictionary:(NSDictionary*)dictionary;

-(id)initWithExampleObject:(ExampleObject*)exampleObject dictionary:(NSDictionary*)dictionary;

-(void)methodUniqueToDecorator1;

-(void)nonuniqueMethod;

@end
