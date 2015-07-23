//
//  Node.h
//  LinkedList
//
//  Created by Shekhar on 9/7/15.
//  Copyright (c) 2015 Edenred. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (nonatomic, strong) Node *next;
@property (nonatomic, strong) id object;

+ (Node*)newNodeWithObject:(id)object :(Node*)node;


@end
