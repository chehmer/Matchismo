//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Roy chehmer on 11/15/14.
//  Copyright (c) 2014 ChehmerRoy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

//designated initializer
-(instancetype)initWithCardCount:(NSInteger)count
                        usingDeck:(Deck *)deck;
-(void)chooseCardAtIndex:(NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic,readonly) NSInteger score;

@end
