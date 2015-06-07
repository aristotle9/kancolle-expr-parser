package org.lala.folderActors
{
	public class StringLengthActor extends UnaryActor
	{
		public function StringLengthActor()
		{
			super();
		}
		
		override public function reduce(params:Array):*
		{
			return String(params[0]).length;
		}
	}
}