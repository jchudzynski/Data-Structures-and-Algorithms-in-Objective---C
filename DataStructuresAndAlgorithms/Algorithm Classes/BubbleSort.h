//
//  BubbleSort.h
//  DataStructuresAndAlgorithms
//
//  Created by Janusz Chudzynski on 8/22/12.
//  Copyright (c) 2012 Janusz Chudzynski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BubbleSort : NSObject
{
 int N;
}
-(void) runAlgorithm;
-(id) initWithElements:(int) N;
@end
