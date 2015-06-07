package org.lala.folderActors
{
	public interface IFolderActor
	{
		function get arity():uint;
		function reduce(params:Array):*;
	}
}