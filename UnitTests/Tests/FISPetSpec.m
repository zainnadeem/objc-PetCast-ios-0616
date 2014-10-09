//
//  FISPetSpec.m
//  objc-PetCast
//
//  Created by Zachary Drossman on 10/3/14.
//  Copyright 2014 The Flatiron School. All rights reserved.
//

#import "Specta.h"
#import "FISPet.h"
#define EXP_SHORTHAND
#import "Expecta.h"

SpecBegin(FISPet)

describe(@"FISPet", ^{
    
    __block FISPet *cutePet;
    
    beforeAll(^{
        cutePet = [[FISPet alloc] init];
        expect(cutePet).to.beKindOf([FISPet class]);
    });
    
    describe(@"makeASound", ^{
        it(@"should be an instance method", ^{
            expect(cutePet).to.respondTo(@selector(makeASound));
        });
        
        it (@"should return the appropriate NSString", ^{
            expect([cutePet makeASound]).to.equal(@"Pet me!");
        });
    });
    
    describe(@"eatSomething", ^{
        
        it (@"should be an instance method", ^{
            expect(cutePet).to.respondTo(@selector(eatSomething));
        });
        
        it (@"should return the appropriate NSString", ^{
            expect([cutePet eatSomething]).to.equal(@"Nom nom nom.");
        });
        
    });
});

SpecEnd
