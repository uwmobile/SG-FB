package events
{
	import flash.events.Event;
	
	public class AppCompleteEvent extends Event
	{
		private var _data:Array;
		
		//constructor
		public function AppCompleteEvent(type:String)
		{
			super(type);	
		}
		
		public function set data(value:Array):void
		{
			_data = value;
		}
		
		public function get data():Array
		{
			return _data;
		}
	}
}