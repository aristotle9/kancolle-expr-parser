package org.lala.folderActors
{
	public class ToStringActor extends UnaryActor
	{
		public function ToStringActor()
		{
			super();
		}
		
		override public function reduce(params:Array):*
		{
			return String(params[0]);
		}
	}
}