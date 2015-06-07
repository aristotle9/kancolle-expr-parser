package org.lala.folderActors
{
	public class UnaryActor implements IFolderActor
	{
		public function UnaryActor()
		{
		}
		
		public function get arity():uint
		{
			return 1;
		}
		
		public function reduce(params:Array):*
		{
			return null;
		}
	}
}