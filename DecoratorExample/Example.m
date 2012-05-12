//
//  Example.m
//  DecoratorExample
//
//  Created by Ryan Tsukamoto on 5/11/12.
//  Copyright (c) 2012 Miso Media Inc. All rights reserved.
//

#import "Example.h"
#import "ExampleObjectDecorator0.h"
#import "ExampleObjectDecorator1.h"

void RunExample()
{
	ExampleObject* exampleObject = [[ExampleObject alloc] initWithString:@"string" number:[NSNumber numberWithUnsignedInt:420]];
	NSLog(@"ExampleObject* exampleObject = %@", [exampleObject stringValue]);
	NSLog(@"decorators:%@", [exampleObject decorators]);

	ExampleObject* exampleObjectToBecomeDecoratedWithDecorator0 = [[ExampleObject alloc] initWithString:@"a" number:[NSNumber numberWithUnsignedInt:0]];
	NSLog(@"ExampleObject* exampleObjectToBecomeDecoratedWithDecorator0 = %@", [exampleObjectToBecomeDecoratedWithDecorator0 stringValue]);

	ExampleObjectDecorator0* exampleObjectDecorator0 = [[ExampleObjectDecorator0 alloc] initWithExampleObject:exampleObjectToBecomeDecoratedWithDecorator0 array:[NSArray arrayWithObject:@"arrayObject"]];
	NSLog(@"ExampleObjectDecorator0* exampleObjectDecorator0 = %@", [exampleObjectDecorator0 stringValue]);
	NSLog(@"decorators:%@", [exampleObjectDecorator0 decorators]);
	[exampleObjectDecorator0 methodUniqueToDecorator0];
	[exampleObjectDecorator0 nonuniqueMethod];

	ExampleObject* exampleObjectToBecomeDecoratedWithDecorator1 = [[ExampleObject alloc] initWithString:@"b" number:[NSNumber numberWithUnsignedInt:1]];
	NSLog(@"ExampleObject* exampleObjectToBecomeDecoratedWithDecorator1 = %@", [exampleObjectToBecomeDecoratedWithDecorator1 stringValue]);

	ExampleObjectDecorator1* exampleObjectDecorator1 = [[ExampleObjectDecorator1 alloc] initWithExampleObject:exampleObjectToBecomeDecoratedWithDecorator1 dictionary:[NSDictionary dictionaryWithObject:@"dictionaryObject" forKey:@"dictionaryKey"]];
	NSLog(@"ExampleObjectDecorator1* exmapleObjectDecorator1 = %@", [exampleObjectDecorator1 stringValue]);
	NSLog(@"decorators:%@", [exampleObjectDecorator1 decorators]);
	[exampleObjectDecorator1 methodUniqueToDecorator1];
	[exampleObjectDecorator0 nonuniqueMethod];
	
	ExampleObjectDecorator0* anotherExampleObjectDecorator0 = [[ExampleObjectDecorator0 alloc] initWithString:@"c" number:[NSNumber numberWithUnsignedInt:2] array:[NSArray arrayWithObject:@"anotherArrayObject"]];
	NSLog(@"ExampleObjectDecorator0* anotherExampleObjectDecorator0 = %@", [anotherExampleObjectDecorator0 stringValue]);
	NSLog(@"decorators:%@", [anotherExampleObjectDecorator0 decorators]);
	[anotherExampleObjectDecorator0 methodUniqueToDecorator0];
	[anotherExampleObjectDecorator0 nonuniqueMethod];
	
	ExampleObjectDecorator1* anotherExampleObjectDecorator1 = [[ExampleObjectDecorator1 alloc] initWithString:@"d" number:[NSNumber numberWithUnsignedInt:3] dictionary:[NSDictionary dictionaryWithObject:@"anotherDictionaryObject" forKey:@"anotherDictionaryKey"]];
	NSLog(@"ExampleObjectDecorator1* anotherExampleObjectDecorator1 = %@", [anotherExampleObjectDecorator1 stringValue]);
	NSLog(@"decorators:%@", [anotherExampleObjectDecorator1 decorators]);
	[anotherExampleObjectDecorator1 methodUniqueToDecorator1];
	[anotherExampleObjectDecorator1 nonuniqueMethod];

	id exampleObjectDecoratedWith0Then1 = [[ExampleObjectDecorator1 alloc] initWithExampleObject:[[ExampleObjectDecorator0 alloc] initWithString:@"e" number:[NSNumber numberWithUnsignedInt:4] array:[NSArray arrayWithObject:@"01arrayObject"]] dictionary:[NSDictionary dictionaryWithObject:@"01dictionaryObject" forKey:@"01dictionaryKey"]];
	NSLog(@"id exampleObjectDecoratedWith0Then1 = %@", [exampleObjectDecoratedWith0Then1 stringValue]);
	NSLog(@"decorators:%@", [exampleObjectDecoratedWith0Then1 decorators]);
	[exampleObjectDecoratedWith0Then1 methodUniqueToDecorator0];
	[exampleObjectDecoratedWith0Then1 methodUniqueToDecorator1];
	[exampleObjectDecoratedWith0Then1 nonuniqueMethod];
	
	id exampleObjectDecoratedWith1Then0 = [[ExampleObjectDecorator0 alloc] initWithExampleObject:[[ExampleObjectDecorator1 alloc] initWithString:@"f" number:[NSNumber numberWithUnsignedInt:5] dictionary:[NSDictionary dictionaryWithObject:@"10dictionaryObject" forKey:@"10dictionaryKey"]] array:[NSArray arrayWithObject:@"10arrayObject"]];
	NSLog(@"id exampleObjectDecoratedWith1Then0 = %@", [exampleObjectDecoratedWith1Then0 stringValue]);
	NSLog(@"decorators:%@", [exampleObjectDecoratedWith1Then0 decorators]);
	[exampleObjectDecoratedWith1Then0 methodUniqueToDecorator0];
	[exampleObjectDecoratedWith1Then0 methodUniqueToDecorator1];
	[exampleObjectDecoratedWith1Then0 nonuniqueMethod];
	
	id exampleObjectUsingDecoratorStrings = [ExampleObjectDecorator decorateExampleObject:[[ExampleObject alloc] initWithString:@"string" number:[NSNumber numberWithUnsignedInt:420]] withDecoratorStrings:[NSArray arrayWithObjects:@"ExampleObjectDecorator0", @"ExampleObjectDecorator1", nil]];
	NSLog(@"id exmapleObjectUsingDecoratorStrings = %@",  [exampleObjectUsingDecoratorStrings stringValue]);
	NSLog(@"decorators:%@", [exampleObjectUsingDecoratorStrings decorators]);
	
}
