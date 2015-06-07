package org.lala.folderActors
{
	public class DivisionActor extends BinaryActor
	{
		public function DivisionActor()
		{
			super();
		}
		
		override public function reduce(params:Array):*
		{
			return Number(params[0]) / Number(params[1]);
		}
	}
}