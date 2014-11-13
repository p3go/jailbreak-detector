package net.babeuf.mobile
{
	import flash.display.Sprite;
	import flash.text.TextField;
	
	/**
	 * Jailbreak Detector Sample
	 * Basic test
	 * @author Damien Pegoraro // www.babeuf.net // @_baabeuf	
	 */
	public class JailbreakDetectorSample extends Sprite
	{
		
		public function JailbreakDetectorSample():void
		{
			var tf : TextField = new TextField() ; 
			tf.width = 300 ;
			tf.height = 200 ; 
			addChild( tf ) ; 
			
			// stuff is here:  			
			var isJailbroken : Boolean = JailbreakDetector.isJailbroken(); 
			var isRooted : Boolean = JailbreakDetector.isRooted(); 
			var isDeviceLegit : Boolean = JailbreakDetector.isDeviceLegit(); 
			
			
			tf.appendText( "JAILBREAK FOUND : "  + isJailbroken + "\n" ) ; 
			tf.appendText( "ROOT FOUND : "  + isRooted + "\n" ) ; 
			tf.appendText( "FULL LEGIT DEVICE : "  + isDeviceLegit  ) ; 
			
			
		
		}
	
	}

}