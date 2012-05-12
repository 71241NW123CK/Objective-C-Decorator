//
//  ExampleObjectDecorator1.m
//  DecoratorExample
//
//  Created by Ryan Tsukamoto on 5/11/12.
//  Copyright (c) 2012 Miso Media Inc. All rights reserved.
//

#import "ExampleObjectDecorator1.h"

@interface ExampleObjectDecorator1()

@property	(nonatomic, readwrite, strong)	NSDictionary*	dictionary;

@end

@implementation ExampleObjectDecorator1

@synthesize dictionary = _dictionary;

-(id)initWithString:(NSString*)string number:(NSNumber*)number
{
	if(self = [super initWithString:string number:number])	self.dictionary = [NSDictionary dictionary];
	return self;
}

-(id)initWithExampleObject:(ExampleObject *)exampleObject
{
	if(self = [super initWithExampleObject:exampleObject])	self.dictionary = [NSDictionary dictionary];
	return self;
}

-(id)initWithString:(NSString*)string number:(NSNumber*)number dictionary:(NSDictionary*)dictionary
{
	if(self = [super initWithString:string number:number])	self.dictionary = dictionary;
	return self;
}

-(id)initWithExampleObject:(ExampleObject*)exampleObject dictionary:(NSDictionary*)dictionary
{
	if(self = [super initWithExampleObject:exampleObject])	self.dictionary = dictionary;
	return self;
}

-(void)methodUniqueToDecorator1{NSLog(@"methodUniqueToDecorator1");}

-(void)nonuniqueMethod{NSLog(@"1");}

-(NSString*)stringValueHelper{return [NSString stringWithFormat:@"dictionary:%@", self.dictionary];}

@end
