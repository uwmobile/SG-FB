package events
{
	import flash.events.Event;
	import flash.events.EventDispatcher;

	public class EventFactory extends EventDispatcher
	{
		private static var _instance:EventFactory = new EventFactory();
		
		//constructor
		public function EventFactory()
		{
			super();
		}

		public static function addEventListener(type:String, listener:Function, useCapture:Boolean=false, priority:int=0, useWeakReference:Boolean=false):void
		{
			_instance.addEventListener(type,listener,useCapture,priority,useWeakReference);
		}
		
		public static function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void
		{
			_instance.removeEventListener(type,listener,useCapture);
		}
		
		public static function dispatchEvent(event:Event):void
		{
			_instance.dispatchEvent(event);
		}
	}
}