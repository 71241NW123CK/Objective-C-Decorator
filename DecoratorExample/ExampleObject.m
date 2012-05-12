//
//  ExampleObject.m
//  DecoratorExample
//
//  Created by Ryan Tsukamoto on 5/11/12.
//  Copyright (c) 2012 Miso Media Inc. All rights reserved.
//

#import "ExampleObject.h"

@interface ExampleObject()

@property	(nonatomic, readwrite, strong)	NSString*	string;
@property	(nonatomic, readwrite, strong)	NSNumber*	number;

-(id)initWithString:(NSString*)string number:(NSNumber*)number;

-(NSString*)stringMethod;

@end

@implementation ExampleObject

@synthesize string = _string;
@synthesize number = _number;

-(NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{return [[self class] instanceMethodSignatureForSelector:aSelector];}

-(id)initWithString:(NSString*)string number:(NSNumber*)number
{
	if(self = [super init])
	{
		self.string = string;
		self.number = number;
	}
	return self;
}

-(NSString*)stringMethod{return [NSString stringWithFormat:@"In class %@\nstring:\t%@\nnumber:\t%@", NSStringFromClass([self class]), self.string, self.number];}

-(NSString*)decorations{return NSStringFromClass([self class]);}

-(NSString*)stringValue{return [NSString stringWithFormat:@"{string:%@, number:%@}", self.string, self.number];}

@end
