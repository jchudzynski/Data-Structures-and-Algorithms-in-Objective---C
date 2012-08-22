//
//  InsertionSort.m
//  DataStructuresAndAlgorithms
//
//  Created by Janusz Chudzynski on 8/22/12.
//  Copyright (c) 2012 Janusz Chudzynski. All rights reserved.
//

#import "InsertionSort.h"

@implementation InsertionSort

-(void)insertionSort:(int[]) arr ofSize:(int) size{
    int i, j, newValue;
    
    for(int i= 1; i< size; i++)
    {
        newValue = arr[i];
        j = i;
        while(j>0&&arr[j-1]>newValue)
        {
            arr[j]=arr[j-1];
            j--;
        }
        arr[j]=newValue;
    }
    
    
    NSLog(@" Sorted Array is: ");
           
    for(int i= 1; i< size; i++)
    {
        NSLog(@" %d",arr[i]) ;
    }
    
}


-(id) init{
    if(self = [super init])
    {
        int N = 100;
        int array[N];
        for(int i=0;i<N; i++)
        {
            array[i] = arc4random()%N;
        }
        
    [self insertionSort:array ofSize:N];
        
    }
    return self;
}


@end
