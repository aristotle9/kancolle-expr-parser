package org.lala.folderActors
{
	public class SqrtActor extends UnaryActor
	{
		public function SqrtActor()
		{
			super();
		}
		
		override public function reduce(params:Array):*
		{
			return Math.sqrt(Number(params[0]));
		}
	}
}