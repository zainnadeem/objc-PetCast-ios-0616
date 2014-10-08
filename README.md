---
tags: casting
languages: objc
---

# objc-PetCast

##Instructions

1) Create a class called FISPet. FISPet has a method called `makeASound` that returns an NSString that reads "Pet me!" It also has a method called `eatSomething` that returns an `NSString` that reads "Nom Nom Nom.";

2) Create a second class called FISDog. FISDog should be a subclass of FISPet. The FISDog class has a method called `makeASound` that returns an `NSString` that reads "Woof." Also, FISDogs are able to `assaultTheMailman`. This method returns an NSString that reads "I got the mail! I got the mail!"

In your FISAppDelegate `application:didFinishLaunchingWithOptions:`, create an instance of an FISPet. Make it go "Woof." And make it go "Nom Nom Nom." Then create an instance of an FISDog that NSLogs "Pet me!"


##Advanced

After pushing up your solution, try to make your FISPet (that was casted as an FISDog) assault the mailman. What happens? Why? 

Now try to make your FISDog that was casted as an FISPet assault the mailman. What happens? How might you make the method work?

No need to push anything up to github for this section.

##Hint

It is possible to cast in-line by putting parentheses around an object. For instance, if we had a Car object and a Porsche object, and the Porsche object had a property called isTurboCharged. The following would work:

```
FISCar *newCar = [FISPorsche alloc] init];
((Porsche *)newCar).isTurboCharged = YES;
```
