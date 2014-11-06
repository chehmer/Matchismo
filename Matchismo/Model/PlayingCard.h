//
//  PlayingCard.h
//  Matchismo
//
//  Created by Roy chehmer on 11/1/14.
//  Copyright (c) 2014 ChehmerRoy. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong,nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end
