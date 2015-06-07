package org.lala.folderActors
{
	public class AdditionActor extends BinaryActor
	{
		public function AdditionActor()
		{
			super();
		}
		
		override public function reduce(params:Array):*
		{
			return Number(params[0]) + Number(params[1]);
		}
	}
}