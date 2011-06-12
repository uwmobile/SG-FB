package events
{
	import flash.events.Event;
	
	import mx.collections.ArrayList;
	
	public class FriendsDataEvent extends Event
	{
		private var _data:ArrayList;
		
		//constructor
		public function FriendsDataEvent(type:String)
		{
			super(type);	
		}
		
		public function set data(value:ArrayList):void
		{
			_data = value;
		}
		
		public function get data():ArrayList
		{
			return _data;
		}
	}
}