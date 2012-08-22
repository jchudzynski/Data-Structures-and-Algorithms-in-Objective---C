//
//  BinarySearchTree.h
//  DataStructuresAndAlgorithms
//
//  Created by Janusz Chudzynski on 8/20/12.
//  Copyright (c) 2012 Janusz Chudzynski. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BinarySearchNode;

@interface BinarySearchTree : NSObject{
    BinarySearchNode * root;

}
@property(nonatomic, strong)BinarySearchNode * root;

-(BinarySearchNode *)find:(BinarySearchNode *)node forRoot:(BinarySearchNode * )_root;
-(void)insertNode:(BinarySearchNode *)node forRoot:(BinarySearchNode *__autoreleasing *)_root;
-(void)deleteNode:(BinarySearchNode *)node forRoot:(BinarySearchNode *)_root;

-(void)addData:(int)data;
-(void)findData:(int)data;
-(void) findAll:(BinarySearchNode *)root;


@end
