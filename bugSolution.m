To solve the retain cycle, use a `weak` property in one of the classes:

```objectivec
@interface MyClass : NSObject
@property (nonatomic, strong) AnotherClass *anotherObject;
@end

@interface AnotherClass : NSObject
@property (nonatomic, weak) MyClass *myObject; // Use weak here
@end

@implementation MyClass
// ...
@end

@implementation AnotherClass
// ...
@end
```

By making `myObject` a weak reference, `AnotherClass` no longer retains `MyClass`.  When `MyClass` is no longer referenced elsewhere, it will be deallocated, breaking the cycle and preventing the memory leak.  Alternatively, you could use `weak` in `MyClass` and `strong` in `AnotherClass`.