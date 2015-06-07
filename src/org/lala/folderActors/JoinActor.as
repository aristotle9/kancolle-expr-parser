package org.lala.folderActors
{
	public class JoinActor implements IFolderActor
	{
		public function JoinActor()
		{
		}
		
		public function get arity():uint
		{
			return uint.MAX_VALUE;
		}
		
		public function reduce(params:Array):*
		{
			return params.join("");
		}
	}
}