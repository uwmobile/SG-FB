package utils
{
	//class of constants used in the entire project
	//include in every class file if needed
	import mx.collections.ArrayCollection;
	import mx.resources.IResourceManager;
	import mx.resources.ResourceManager;

	public class Constants
	{
		public static var ENGLISH:String = "en_US";
		public static var CHINESE:String = "zh_CN";
		
		public static var LANGUAGES:ArrayCollection = new ArrayCollection(
			[Constants.ENGLISH,Constants.CHINESE]
		);
		
		//facebook
		public static var LINK_CANVAS_URL:String = "http://www.facebook.com/";
		public static var APPLICATION_ID:String = "183423185033368";
		
		
		
		//events
		public static var EVENT_FRIENDS_UPDATED:String = "friends updated event";
		public static var EVENT_POSTS_UPDATED:String = "posts updated event";
	}
}