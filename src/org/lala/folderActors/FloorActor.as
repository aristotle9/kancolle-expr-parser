package org.lala.folderActors
{
	public class FloorActor extends UnaryActor
	{
		public function FloorActor()
		{
			super();
		}
		
		override public function reduce(params:Array):*
		{
			return Math.floor(Number(params[0]));
		}
	}
}