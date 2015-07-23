//
//  LinkedList.h
//  LinkedList
//
//  Created by Shekhar on 9/7/15.
//  Copyright (c) 2015 Edenred. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedList : NSObject{
    Node *head;
    int size;
}

//@property (nonatomic, strong) Node *head;

- (id)init;
- (id)initWithObject:(id)newObject;
+ (id)listWithObject:(id)newObject;

- (int)count;
- (void)push:(id)newObject;
- (id)removeObject:(id)object;
- (id)pop;
- (id)peek;
- (NSArray*)allObjects;

@end
