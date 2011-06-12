package controllers
{
	import events.AppCompleteEvent;
	import events.EventFactory;
	import events.FriendsDataEvent;
	
	import flash.events.EventDispatcher;
	
	import models.FriendsModel;
	
	import mx.collections.ArrayList;
	import mx.utils.ObjectUtil;
	
	import utils.Constants;

	public class MostPopularFriends extends EventDispatcher
	{
		//constuctor
		public function MostPopularFriends() {
			super();
		}
		
		public static function run():void
		{
			EventFactory.addEventListener(Constants.EVENT_FRIENDS_UPDATED,dataLoadHandler,false,0,true);
			FriendsModel.getFriendsData(["uid", "wall_count"]);
		}
		
		private static function dataLoadHandler(event:FriendsDataEvent):void
		{
			var friendsData:Array = event.data.source;
			var returnData:Array = new Array();
			for each (var o:Object in friendsData){
				returnData.push(ObjectUtil.clone(o));
			}
			returnData.sortOn("wall_count", Array.DESCENDING | Array.NUMERIC);
			
			var returnEvent:AppCompleteEvent = new AppCompleteEvent(Constants.EVENT_APP_COMPLETE);
			returnEvent.data = returnData;
			EventFactory.dispatchEvent(returnEvent);
		}
	}
}