package org.lala.folderActors
{
	public class NumberSegActor implements IFolderActor
	{
		public function NumberSegActor()
		{
		}
		
		public function get arity():uint
		{
			return 3;
		}

		public function reduce(params:Array):*
		{
			return Number((params[0] as String).substr(params[1] as Number, params[2] as Number));
		}
	}
}