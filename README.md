# PetCast

## Instructions

1. Create a class called `FISPet`. `FISPet` has a method called `makeASound` that returns an `NSString` that reads "Pet me!" It also has a method called `eatSomething` that returns an `NSString` that reads "Nom nom nom."

2. Create a second class called `FISDog`. `FISDog` should be a subclass of `FISPet`. The `FISDog` class should override `makeASound` to return "Woof!" Also, `FISDog`s are able to `assaultTheMailman`. This method returns an `NSString` that reads "I got the mail! I got the mail!"

3. In your FISAppDelegate `application:didFinishLaunchingWithOptions:`, create an instance of `FISDog`. Then...
    * Confirm that it barks and can assault the mailman!
    * Cast it to an `FISPet` and confirm that, even though the variable is now an `FISPet`, its `makeASound` still goes "Woof."
    * Create an instance of `FISPet`. Cast it to be an `FISDog`, and make it go "Pet me!" Can you call `assaultTheMailman` on this fake dog? Will it compile? Will it *run*?
    * Now try to make your `FISDog` that was cast as an `FISPet` assault the mailman. What happens? How might you make the method call work? See the hint below for more information.


## Hint

It is possible to cast in-line by putting parentheses around an object. For instance, assume we had a `FISCar` class and a `FISPorsche` subclass, and the `FISPorsche` object had a property called `isTurboCharged`. The following would work:

```
FISCar *newCar = [[FISPorsche alloc] init];
((FISPorsche *)newCar).isTurboCharged = YES;
```

So, what is happening above? First, we have intialized a `FISPorsche`, but it has been assigned to a variable of type `FISCar`. Then when it is time to set the isTurboCharged property, we have re-cast `newCar` to its original `FISPorsche` type, so the compiler will let us access its `isTurboCharged` property. Note the extra set of parentheses before `.isTurboCharged`.

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/objc-PetCast' title='PetCast'>PetCast</a> on Learn.co and start learning to code for free.</p>
