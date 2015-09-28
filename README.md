

# objc-PetCast

##Instructions

1) Create a class called FISPet. FISPet has a method called `makeASound` that returns an NSString that reads "Pet me!" It also has a method called `eatSomething` that returns an `NSString` that reads "Nom Nom Nom.";

2) Create a second class called FISDog. FISDog should be a subclass of FISPet. The FISDog class has a method called `makeASound` that returns an `NSString` that reads "Woof." Also, FISDogs are able to `assaultTheMailman`. This method returns an NSString that reads "I got the mail! I got the mail!"

In your FISAppDelegate `application:didFinishLaunchingWithOptions:`, create an instance of an FISDog. Cast it to be an FISPet and make it go "Woof." and "Nom nom nom." Then create an instance of an FISPet. Cast it to be an FISDog, and make it go "Pet me!"


##Advanced

After pushing up your solution, try to make your FISPet (that was casted as an FISDog) assault the mailman. What happens? Why? 

Now try to make your FISDog that was casted as an FISPet assault the mailman. What happens? How might you make the method work? See the hint below for more information.

No need to push anything up to github for this section.

##Hint

It is possible to cast in-line by putting parentheses around an object. For instance, if we had a Car object and a Porsche object, and the Porsche object had a property called isTurboCharged. The following would work:

```
FISCar *newCar = [FISPorsche alloc] init];
((Porsche *)newCar).isTurboCharged = YES;
```

So, what is happening above? First, we have intialized a Porsche, but it has been assigned a memory address that holds an FISCar. Then when it is time to set the isTurboCharged property, we have re-cast `newCar` to its original `Porsche` state. Note the extra parentheses before the `.isTurboCharged`. This is necessary so that the compiler / linter will understand that `newCar` is a `Porsche`.
