package net.babeuf.mobile
{
	import flash.filesystem.File;
	/**
	 * JailbreakDetector
	 * Tells you if an iDevice has Cydia installed (jailbroken)  or if an Android device has su installed (rooted)
	 * by checking specific file locations on Drive.	 
	 * @version 1.0
	 * @author Damien Pegoraro // www.babeuf.net // @_baabeuf	
	 */
	public class JailbreakDetector 
	{
		/**
		 * Global check for both Android and iOS 
		 * @return true if device is nor rooted nor jailbroken
		 */
		public static function isDeviceLegit() : Boolean
		{
			return !isRooted() && !isJailbroken() ; 			
		}
			
		/**
		 * Root check for Android
		 * Tries to locate su exec on various drives
		 * Warning: A rooted phone does not mean your app has been hacked. Btw, rooting is totally legal 
		 * method taken from: https://github.com/Stericson/RootTools
		 * @return true if rooted
		 */
		public static function isRooted() : Boolean
		{
			var androidPlaces : Array = [ "/sbin/", "/system/bin/", "/system/xbin/", "/data/local/xbin/", "/data/local/bin/", "/system/sd/xbin/", "/system/bin/failsafe/", "/data/local/"] ; 
           
			for each ( var s : String in androidPlaces )
			{
				var f : File = new File( s + "su") ; 				
				if ( f.exists ) 
				{
					return true ;
				}
			}
			return false ; 			
		}
		
		/**
		 * Jailbreak check for iOS
		 * Tries to locate Cydia on drive. 
		 * Warning: A phone can be jailbroken without Cydia. It's not the perfect solution but that fits most of cases.
		 * method found on: https://stackoverflow.com/questions/413242/how-do-i-detect-that-an-ios-app-is-running-on-a-jailbroken-phone
		 * @return true if jailbroken
		 */
		public static function isJailbroken() : Boolean
		{
			var f : File = new File( "/Applications/Cydia.app" ) ; 
			return f.exists ; 
		}
		
		
		
	}

}