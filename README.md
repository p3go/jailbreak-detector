jailbreak-detector
==================

Lightweight AIR tool that tells you if an iDevice is jailbroken or if an Android device is rooted

**This is not an ANE, there's no native code involved here.**


iDevices jailbreak comes with the installation of **Cydia** most of the time. 
This detection relies on that, looking for Cydia files on the drive. 
It's not perfect but it works in many cases.

To check if an Apple device is jailbroken: 

```actionscript
var isJailbroken : Boolean = JailbreakDetector.isJailbroken(); 
```

Android root of a phone is fully legal and does not necessarily involve app piracy.

This detection tries to locate **su** on specific folders on the drive.

To check if an Android device is rooted: 

```actionscript
var isRooted : Boolean = JailbreakDetector.isRooted(); 
```

If you want to check both at once for a multiplatform app, call this:

```actionscript
var isDeviceLegit : Boolean = JailbreakDetector.isDeviceLegit(); 
```

Tested with success on a jailbroken iPad2, a legit iPad3, a rooted Nexus 5, and a legit Nexus 4.
Let me know about bugs and cool stuff to add, and fell free to improve! 

> website: http://www.babeuf.net
> twitter: https://twitter.com/_baabeuf





