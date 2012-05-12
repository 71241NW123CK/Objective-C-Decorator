//
//  ExampleObjectDecorator0.m
//  DecoratorExample
//
//  Created by Ryan Tsukamoto on 5/11/12.
//  Copyright (c) 2012 Miso Media Inc. All rights reserved.
//

#import "ExampleObjectDecorator0.h"

@interface ExampleObjectDecorator0()

@property	(nonatomic, readwrite, strong)	NSArray* array;

@end

@implementation ExampleObjectDecorator0

@synthesize array = _array;

-(id)initWithString:(NSString *)string number:(NSNumber *)number
{
	if(self = [super initWithString:string number:number])	self.array = [NSArray array];
	return self;
}

-(id)initWithExampleObject:(ExampleObject *)exampleObject
{
	if(self = [super initWithExampleObject:exampleObject])	self.array = [NSArray array];
	return self;
}

-(id)initWithString:(NSString*)string number:(NSNumber*)number array:(NSArray*)array
{
	if(self = [super initWithString:string number:number])	self.array = array;
	return self;
}

-(id)initWithExampleObject:(ExampleObject *)exampleObject array:(NSArray*)array
{
	if(self = [super initWithExampleObject:exampleObject])	self.array = array;
	return self;
}

-(void)methodUniqueToDecorator0{NSLog(@"methodUniqueToDecorator0");}

-(void)nonuniqueMethod{NSLog(@"0");}

-(NSString*)stringValueHelper{return [NSString stringWithFormat:@"array:%@", self.array];}

@end
