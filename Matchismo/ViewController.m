//
//  ViewController.m
//  Matchismo
//
//  Created by Roy chehmer on 10/31/14.
//  Copyright (c) 2014 ChehmerRoy. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic,strong) Deck *deck;

@end

@implementation ViewController

-(Deck *)deck
{
    if (!_deck) _deck = [self createDeck];
    
    return _deck;
}

-(Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}


-(void)setFlipCount:(int)flipCount
{
    _flipCount=flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length])
    {
        UIImage *cardImage = [UIImage imageNamed:@"cardBack"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else
    {
        Card *card=[self.deck drawRandomCard];
        if (card)
        {
            UIImage *cardImage = [UIImage imageNamed:@"cardFront"];
            [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
            self.flipCount++;
        }
    }
}

@end
