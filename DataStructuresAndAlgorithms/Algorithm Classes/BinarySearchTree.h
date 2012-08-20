//
//  BinarySearchTree.h
//  DataStructuresAndAlgorithms
//
//  Created by Janusz Chudzynski on 8/20/12.
//  Copyright (c) 2012 Janusz Chudzynski. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BinarySearchNode;

@interface BinarySearchTree : NSObject
@property(nonatomic, strong)BinarySearchNode * root;
-(void)find:(BinarySearchNode *)node withData:(int) data;
-(void)insertNode:(BinarySearchNode *)node;
-(void)deleteNode:(BinarySearchNode *)node;

@end
