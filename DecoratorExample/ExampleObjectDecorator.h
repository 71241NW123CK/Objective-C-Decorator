//
//  ExampleObjectDecorator.h
//  DecoratorExample
//
//  Created by Ryan Tsukamoto on 5/11/12.
//  Copyright (c) 2012 Miso Media Inc. All rights reserved.
//

#import "ExampleObject.h"

//!	An abstract decorator for our example class.
@interface ExampleObjectDecorator : ExampleObject

@property	(nonatomic, readonly, strong)	ExampleObject* exampleObject;

-(id)initWithExampleObject:(ExampleObject*)exampleObject;

-(NSString*)stringValueHelper;

@end
