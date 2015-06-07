package org.lala.folderActors
{
	public class MultiplicationActor extends BinaryActor
	{
		public function MultiplicationActor()
		{
			super();
		}
		
		override public function reduce(params:Array):*
		{
			return Number(params[0]) * Number(params[1]);
		}
	}
}