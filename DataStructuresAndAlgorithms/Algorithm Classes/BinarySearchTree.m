//
//  BinarySearchTree.m
//  DataStructuresAndAlgorithms
//
//  Created by Janusz Chudzynski on 8/20/12.
//  Copyright (c) 2012 Janusz Chudzynski. All rights reserved.
//

#import "BinarySearchTree.h"
#import "BinarySearchNode.h"
@implementation BinarySearchTree
@synthesize root, currentNode;


-(BinarySearchNode *)find:(BinarySearchNode *)node forRoot:(BinarySearchNode * )_root{
    BinarySearchNode * temp;
    if(_root==NULL)
    {
        NSLog(@"NULL");
        return NULL;
    }
    else{
        if(_root.data == node.data)
        {
            NSLog(@" FOUND");
            return _root;
        }
        else if(_root.data >node.data)
        {
            [self find: node forRoot:_root.left];
            NSLog(@" LEFT");
        }
        else{
            [self find: node forRoot:_root.right];
            NSLog(@" RIGHT");
            
            _root.right = node;
            
        }
    }
    return temp;
}

-(void)insertNode:(BinarySearchNode *)node forRoot:(BinarySearchNode *)_root{
    
    if(self.root == NULL)
    {
        //beginning of the tree 
        self.root= node;
        NSLog(@"SET  BEGININNG OF THE TREE %d  ",self.root.data);
        return;
    }
    
    if(_root == NULL)
    {
        _root = node;
         NSLog(@"ROOT is Null - > Inserting! %@ ",node);
    }
    else{
        //Check if it is bigger or smaller than root
        if(node.data < _root.data ) // Go to the left
        {
            self.currentNode = _root.left;
            [self insertNode:node forRoot:currentNode];
             NSLog(@"----<<<<<<");
        }
        else if(node.data >_root.data) {
            self.currentNode = _root.right;
            _root.right = node;
            [self insertNode:node forRoot:currentNode];
            
            NSLog(@">>>>>>------");
        }
        else{
            NSLog(@"Duplicates not allowed");
        
        }
    }
    
}

-(void)deleteNode:(BinarySearchNode *)node forRoot:(BinarySearchNode *)_root;{

}

-(void)addData:(int)data{
    BinarySearchNode * node = [[BinarySearchNode alloc]init];
    node.data = data;
    NSLog(@"Root of the Add Data is %@",self.root);
    [self insertNode:node forRoot:self.root];
}

-(void)findData:(int)data{
    BinarySearchNode * node = [[BinarySearchNode alloc]init];
    node.data = data;
    [self find:node forRoot:self.root];
}

-(void) findAll:(BinarySearchNode *)_root{
    if(_root){
        NSLog(@"Node %d ",_root.data);
        //currentNode =
        [self findAll:_root.left];
        [self findAll:_root.right];
    }
}


@end
