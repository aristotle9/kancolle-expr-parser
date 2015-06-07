package org.lala.folderActors
{
	public class ConstantActor implements IFolderActor
	{
		private var value:* = null;
		
		public function ConstantActor(value:*)
		{
			this.value = value;
		}
		
		public function get arity():uint
		{
			return 0;
		}
				
		public function reduce(params:Array):*
		{
			return value;
		}
	}
}