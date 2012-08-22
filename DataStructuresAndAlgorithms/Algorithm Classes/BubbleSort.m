//
//  BubbleSort.m
//  DataStructuresAndAlgorithms
//
//  Created by Janusz Chudzynski on 8/22/12.
//  Copyright (c) 2012 Janusz Chudzynski. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort


-(void) runAlgorithm{
    int array[N];
    for(int i=0;i<N; i++)
    {
        array[i] = arc4random()%N;
    }
    [self bubbleSort:array ofSize:N];
}


-(void)bubbleSort:(int[]) intArray ofSize:(int) size{
    BOOL swapped = true;
    int j;

    int n = size;
    int temp = 0;
    
    for(int i=0; i < n; i++){
        for(int j=1; j < (n-i); j++){
            
            if(intArray[j-1] > intArray[j]){
                //swap the elements!
                temp = intArray[j-1];
                intArray[j-1] = intArray[j];
                intArray[j] = temp;
            }
            
        }
    }
    NSLog(@" Sorted Array is: ");

    for(int i= 1; i< size; i++)
    {
        NSLog(@" %d",intArray[i]) ;
    }
}




-(id) initWithElements:(int) _N{
    if(self = [super init])
    {
        N=_N;
    }
    return self;
}
@end
