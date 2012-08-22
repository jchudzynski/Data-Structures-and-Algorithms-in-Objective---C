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
#import "InsertionSort.h"
#import "SelectionSort.h"
#import "BubbleSort.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
      /*
        BinarySearchTree * bt = [[BinarySearchTree alloc]init];
        if(bt)
        [bt addData: 5];
        [bt addData: 3];
        [bt addData: 6];
        
        //Testing Sorting
    */
        
       // InsertionSort * is = [[InsertionSort alloc]init];
       // is=is;
//        SelectionSort * ss =[[SelectionSort alloc]initWithElements:100];
//        ss=ss;
        BubbleSort * bs = [[BubbleSort alloc]initWithElements:10];
        [bs runAlgorithm];
        
    
    }
    return 0;
}

