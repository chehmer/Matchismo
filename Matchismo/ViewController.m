//
//  ViewController.m
//  Matchismo
//
//  Created by Roy chehmer on 10/31/14.
//  Copyright (c) 2014 ChehmerRoy. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic,strong) Deck *deck;

@end

@implementation ViewController

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
        UIImage *cardImage = [UIImage imageNamed:@"cardFront"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"A♣️" forState:UIControlStateNormal];
    }
    self.flipCount++;
}

@end
