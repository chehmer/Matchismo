//
//  Deck.h
//  Matchismo
//
//  Created by Roy chehmer on 11/1/14.
//  Copyright (c) 2014 ChehmerRoy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;
-(Card *)drawRandomCard;


@end
