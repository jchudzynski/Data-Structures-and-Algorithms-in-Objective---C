//
//  SelectionSort.m
//  DataStructuresAndAlgorithms
//
//  Created by Janusz Chudzynski on 8/22/12.
//  Copyright (c) 2012 Janusz Chudzynski. All rights reserved.
//

#import "SelectionSort.h"

@implementation SelectionSort

-(void)selectionSort:(int[]) arr ofSize:(int) size{
    int i, j, minIndex, tmp;
    
    for(int i= 0; i< size-1; i++)
    {
        minIndex = i;
        for(j=i+1;j<size;j++)
        {
            if(arr[j]<arr[minIndex])
            {
                minIndex =j;
            }
        }
        if(minIndex!=i){
            tmp = arr[i];
            arr[i] = arr[minIndex];
            arr[minIndex] = tmp;
        }
    }
    
    NSLog(@" Sorted Array is: ");
    
    for(int i= 1; i< size; i++)
    {
        NSLog(@" %d",arr[i]) ;
    }
    
}


-(id) initWithElements:(int) N{
    if(self = [super init])
    {
        int array[N];
        for(int i=0;i<N; i++)
        {
            array[i] = arc4random()%N;
        }
        
        [self selectionSort:array ofSize:N];
        
    }
    return self;
}


@end
