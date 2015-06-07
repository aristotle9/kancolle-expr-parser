package org.lala.folderActors
{
	public class XORActor extends BinaryActor
	{
		public function XORActor()
		{
			super();
		}
		
		override public function reduce(params:Array):*
		{
			return Number(params[0]) ^ Number(params[1]);
		}
	}
}