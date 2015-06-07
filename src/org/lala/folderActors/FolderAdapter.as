package org.lala.folderActors
{
	public class FolderAdapter implements IFolder
	{
		private var actor_map:Object = {};
		
		public function FolderAdapter()
		{
		}
		
		public function transform(expr:*):*
		{
			if(!(expr is Array))
			{
				return expr;
			}
			
			if(expr[0] !== 'mcall')
			{
				return expr;
			}
			var method:String = expr[2];
			var params:Array = expr[3]
			var actor:IFolderActor = actor_map[method];
			if(actor != null)
			{
				var i:uint = 0;
				var fold_params:Array = [];
				while(i < actor.arity && i < params.length)
				{
					var p:* = this.transform(params[i]);
					fold_params.push(p);
					i ++;
				}
				if(is_all(fold_params, is_simple_constant))
				{
					return actor.reduce(fold_params);
				}
				else
				{
					var new_expr:Array = (expr as Array).slice(0, 3);
					new_expr.push(fold_params);
					return new_expr;
				}
			}
			return expr;
		}
		
		public function add(name:String, actor:IFolderActor):IFolder
		{
			actor_map[name] = actor;
			return this;
		}
		
		private function is_all(arr:Array, pred:Function):Boolean
		{
			for(var i:uint = 0; i < arr.length; i ++)
			{
				if(pred(arr[i]))
				{
					continue;
				}
				else
				{
					return false;
				}
			}
			return true;
		}
		
		private function is_simple_constant(o:*):Boolean
		{
			if(o === undefined || o === null || o is String || o is Number)
			{
				return true;
			}
			
			if(o is Array && (o as Array).length == 0)
			{
				return true;
			}
			
			if(o is Object)
			{
				for(var k:String in o)
				{
					return false;
				}
				return true;
			}
			
			return false;
		}
	}
}