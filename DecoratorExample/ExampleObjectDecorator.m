//
//  ExampleObjectDecorator.m
//  DecoratorExample
//
//  Created by Ryan Tsukamoto on 5/11/12.
//  Copyright (c) 2012 Miso Media Inc. All rights reserved.
//

#import "ExampleObjectDecorator.h"

@interface ExampleObjectDecorator()

@property	(nonatomic, readwrite, strong)	ExampleObject* exampleObject;

@end

@implementation ExampleObjectDecorator

@synthesize exampleObject = _exampleObject;

-(NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
{
	if([[self class] instancesRespondToSelector:aSelector])	return [[self class] instanceMethodSignatureForSelector:aSelector];
	return [self.exampleObject methodSignatureForSelector:aSelector];
}

-(void)forwardInvocation:(NSInvocation*)anInvocation
{
	if([self.exampleObject respondsToSelector:[anInvocation selector]])	[anInvocation invokeWithTarget:self.exampleObject];
	else	[super forwardInvocation:anInvocation];
}

-(NSString*)string{return self.exampleObject.string;}

-(void)setString:(NSString*)string{self.exampleObject.string = string;}

-(NSNumber*)number{return self.exampleObject.number;}

-(void)setNumber:(NSNumber*)number{self.exampleObject.number = number;}

-(id)initWithExampleObject:(ExampleObject*)exampleObject
{
	if(self = [super init])	self.exampleObject = exampleObject;
	return self;
}

-(id)initWithString:(NSString *)string number:(NSNumber*)number
{
	ExampleObject* exampleObject = [[ExampleObject alloc] initWithString:string number:number];
	if(self = [super init])	self.exampleObject = exampleObject;
	return self;
}

-(NSString*)stringMethod{return [self.exampleObject stringMethod];}

-(NSString*)decorations{return [NSString stringWithFormat:@"%@(%@)", NSStringFromClass([self class]), [self.exampleObject decorations]];}

-(NSString*)stringValueHelper{return @"";}

-(NSString*)stringValue{return [NSString stringWithFormat:@"{%@} -> %@", [self stringValueHelper], [self.exampleObject stringValue]];}

@end
