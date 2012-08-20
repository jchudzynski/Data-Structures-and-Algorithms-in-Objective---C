//
//  main.m
//  DataStructuresAndAlgorithms
//
//  Created by Janusz Chudzynski on 8/20/12.
//  Copyright (c) 2012 Janusz Chudzynski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinarySearchTree.h"
#import "BinarySearchNode.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
       
        BinarySearchTree * bt = [[BinarySearchTree alloc]init];
        if(bt)

        [bt addData: 5];
        [bt addData: 3];
        [bt addData: 6];
        [bt addData: 8];
        [bt addData: 9];
        [bt addData: 4];
        [bt addData: 2];
        
        [bt findData:2];
        
        [bt findAll:bt.root];
    }
    return 0;
}

