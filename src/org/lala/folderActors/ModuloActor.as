package org.lala.folderActors
{
	public class ModuloActor extends BinaryActor
	{
		public function ModuloActor()
		{
			super();
		}
		
		override public function reduce(params:Array):*
		{
			return Number(params[0]) % Number(params[1]);
		}
	}
}