//
//  Node.m
//  LinkedList
//
//  Created by Shekhar on 9/7/15.
//  Copyright (c) 2015 Edenred. All rights reserved.
//

#import "Node.h"

@implementation Node

+ (Node*)newNodeWithObject:(id)object :(Node*)node{
    Node *newNode = [[Node alloc]init];
    newNode.next = node;
    newNode.object = object;
    return newNode;
}

@end
