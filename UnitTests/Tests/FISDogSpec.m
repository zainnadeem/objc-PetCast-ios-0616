//  FISDogSpec.m

#import "Specta.h"
#import "FISPet.h"
#import "FISDog.h"
#define EXP_SHORTHAND
#import "Expecta.h"

SpecBegin(FISDog)

describe(@"FISDog", ^{

    __block FISDog *puppy;
    
    beforeAll(^{
        puppy = [[FISDog alloc] init];
    });

    it(@"should be a subclass of FISPet", ^{
        expect(puppy).to.beKindOf([FISPet class]);
    });
    
    describe(@"makeASound", ^{
        it (@"should return the appropriate NSString", ^{
            expect([puppy makeASound]).to.equal(@"Woof!");
        });
    });
    
    describe(@"assaultTheMailman", ^{
        it(@"should return the appropriate NSString", ^{
            expect([puppy assaultTheMailman]).to.equal(@"I got the mail! I got the mail!");
        });
    });
});

SpecEnd
