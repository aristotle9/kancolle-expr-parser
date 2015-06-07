package org.lala.folderActors
{
	public class SubtractionActor extends BinaryActor
	{
		public function SubtractionActor()
		{
			super();
		}
		
		override public function reduce(params:Array):*
		{
			return Number(params[0]) - Number(params[1]);
		}
	}
}