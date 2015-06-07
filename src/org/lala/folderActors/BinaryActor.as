package org.lala.folderActors
{
	public class BinaryActor implements IFolderActor
	{
		public function BinaryActor()
		{
		}
		
		public function get arity():uint
		{
			return 2;
		}
		
		public function reduce(params:Array):*
		{
			return null;
		}
	}
}