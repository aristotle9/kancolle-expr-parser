package org.lala.folderActors
{
	public interface IFolder
	{
		function transform(expr:*):*;
		function add(name:String, actor:IFolderActor):IFolder;
	}
}