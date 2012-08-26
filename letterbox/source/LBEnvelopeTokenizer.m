//
//  LBEnvelopeTokenizer.m
//  LetterBox
//
//  Created by August Mueller on 2/28/10.
//  Copyright 2010 Flying Meat Inc. All rights reserved.
//

#import "LBEnvelopeTokenizer.h"

@implementation LBEnvelopeTokenizer

- (id)initWithString:(NSString *)s {
    self = [super initWithString:s];
    if (self) {
        [self setTokenizerState:wordState       from: '!' to:  '!'];
        [self setTokenizerState:wordState       from: '.' to:  '.'];
        [self setTokenizerState:wordState       from: '#' to:  '&'];
        [self setTokenizerState:wordState       from: '*' to: 0xFF];
        [self.wordState setWordChars:YES        from: '.' to:  '.'];
    }
    
    return self;
}

@end
