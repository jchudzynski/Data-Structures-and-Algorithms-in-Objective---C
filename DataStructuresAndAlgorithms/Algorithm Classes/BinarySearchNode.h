//
//  BinarySearchNode.h
//  DataStructuresAndAlgorithms
//
//  Created by Janusz Chudzynski on 8/20/12.
//  Copyright (c) 2012 Janusz Chudzynski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinarySearchNode : NSObject
@property(nonatomic, strong) BinarySearchNode * left;
@property(nonatomic, strong) BinarySearchNode * right;
@property(nonatomic, assign) int data;


@end
