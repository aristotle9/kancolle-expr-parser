package org.lala.gen
{
    

    public class JsParser
    {
        protected var _actionTable:Array;
        protected var _gotoTable:Object;
        protected var _prodList:Array;
        protected var _inputTable:Object;
        ;

        public function JsParser()
        {
            _actionTable = 
[null,{64:48,1:8,68:4,69:52,9:64,10:66,11:1,12:2,13:20,14:46,22:44,23:42,24:50,26:54,41:10,42:22,45:56,49:24,50:26,51:28,52:30,53:32,54:34,55:36,56:38,57:40,59:6,63:12},{0:5,2:5,16:5,58:5,27:5,60:5,15:79},{1:33},{0:7,1:35,2:7,3:41,4:41,5:41,8:41,67:41,16:7,19:41,25:95,27:7,28:41,29:41,30:41,31:41,32:41,33:41,34:41,35:41,36:41,37:41,38:119,44:41,58:7,60:7},{64:48,1:8,66:18,68:4,69:52,9:64,10:66,12:2,13:20,14:46,16:14,17:85,18:87,22:44,23:42,24:50,26:54,65:139,39:16,40:121,41:10,42:22,43:87,45:56,49:24,50:26,51:28,52:30,53:32,54:34,55:36,56:38,57:40,58:14,59:6,62:137,63:12},{0:9,1:8,2:9,3:9,4:9,5:9,8:9,9:64,10:66,11:57,12:59,13:20,14:46,16:9,17:57,18:59,19:9,20:59,22:59,23:59,24:50,26:59,27:9,28:9,29:9,30:9,31:9,32:9,33:9,34:9,35:9,36:9,37:9,39:57,41:10,42:22,43:59,44:9,45:56,47:57,48:59,49:59,50:59,51:59,52:59,53:59,54:59,55:59,56:59,57:59,58:9,59:6,60:9,63:12,64:48,66:57,67:9,68:4,69:52},{64:48,1:8,3:58,68:4,69:52,9:64,10:66,12:2,13:20,14:46,20:62,21:93,22:44,23:42,24:50,26:54,41:10,42:22,44:58,45:56,47:129,48:131,49:24,50:26,51:28,52:30,53:32,54:34,55:36,56:38,57:40,59:6,61:60,63:12},{64:48,1:8,66:18,68:4,69:52,9:64,10:66,12:2,13:20,14:46,16:14,65:123,20:91,22:44,23:42,24:50,26:54,39:16,40:123,41:10,42:22,45:56,49:24,50:26,51:28,52:30,53:32,54:34,55:36,56:38,57:40,58:14,59:6,63:12},{64:48,69:52,9:64,10:66,12:61,13:20,14:46,18:61,20:61,22:44,23:42,24:50,26:54,42:22,43:61,45:56,48:61,49:24,50:61,51:61,52:30,53:32,54:34,55:61,56:61,57:61},{64:48,69:52,9:64,10:66,12:63,13:20,14:46,18:63,20:63,22:44,23:42,24:50,26:54,42:22,43:63,45:56,48:63,49:24,50:26,51:28,52:30,53:32,54:34,55:36,56:38,57:40},{64:48,69:52,9:64,10:66,12:65,13:20,14:46,18:65,20:65,22:44,23:42,24:50,26:54,42:22,43:65,45:56,48:65,49:24,50:65,51:28,52:30,53:32,54:34,55:36,56:38,57:40},{0:11,2:11,3:11,4:11,5:11,8:11,9:64,10:66,67:11,12:67,13:20,14:46,16:11,64:48,18:67,19:11,20:67,22:44,23:42,24:50,26:54,27:11,28:11,29:11,30:11,31:11,32:11,33:11,34:11,35:11,36:11,37:11,69:52,42:22,43:67,44:11,45:56,48:67,49:24,50:67,51:67,52:30,53:32,54:34,55:67,56:67,57:67,58:11,60:11},{64:48,69:52,9:64,10:66,12:69,13:20,14:46,18:69,20:69,22:44,23:42,24:50,26:54,42:22,43:69,45:56,48:69,49:69,50:69,51:69,52:69,53:32,54:34,55:69,56:69,57:69},{64:48,69:52,9:64,10:66,12:71,13:20,14:46,18:71,20:71,22:44,23:42,24:50,26:54,42:22,43:71,45:56,48:71,49:71,50:71,51:71,52:71,53:32,54:34,55:71,56:71,57:71},{64:48,69:52,9:64,10:66,12:73,13:20,14:46,18:73,20:73,22:44,23:42,24:50,26:54,42:22,43:73,45:56,48:73,49:24,50:73,51:73,52:30,53:32,54:34,55:36,56:38,57:40},{64:48,69:52,9:64,10:66,12:75,13:20,14:46,18:75,20:75,22:44,23:42,24:50,26:54,42:22,43:75,45:56,48:75,49:24,50:75,51:75,52:30,53:32,54:34,55:36,56:38,57:40},{64:48,69:52,9:64,10:66,12:77,13:20,14:46,18:77,20:77,22:44,23:42,24:50,26:54,42:22,43:77,45:56,48:77,49:24,50:77,51:77,52:30,53:32,54:34,55:77,56:77,57:40},{0:13,33:13,2:13,3:13,4:13,5:13,8:13,67:13,34:13,35:13,36:13,37:13,16:13,32:13,19:13,44:13,60:13,58:13,27:13,28:13,29:13,30:13,31:13},{0:15,33:15,2:15,3:15,4:15,5:15,8:15,67:15,34:15,35:15,36:15,37:15,16:15,32:15,19:15,44:15,60:15,58:15,27:15,28:15,29:15,30:15,31:15},{6:51},{0:17,33:17,2:17,3:17,4:17,5:17,8:17,67:17,34:17,35:17,36:17,37:17,16:17,32:17,19:17,44:17,60:17,58:17,27:17,28:17,29:17,30:17,31:17},{7:53},{46:127},{0:19,33:19,2:19,3:19,4:19,5:19,8:19,67:19,34:19,35:19,36:19,37:19,16:19,32:19,19:19,44:19,60:19,58:19,27:19,28:19,29:19,30:19,31:19},{0:21,33:21,2:21,3:21,4:21,5:21,8:21,67:21,34:21,35:21,36:21,37:21,16:21,32:21,19:21,44:21,60:21,58:21,27:21,28:21,29:21,30:21,31:21},{0:23,33:23,2:23,3:23,4:23,5:23,8:23,67:23,34:23,35:23,36:23,37:23,16:23,32:23,19:23,44:23,60:23,58:23,27:23,28:23,29:23,30:23,31:23}]
;_gotoTable = 
{32:{44:125,3:45},27:{0:25,16:81,2:37,27:97,60:135,58:81},28:{0:27,33:109,2:39,3:43,4:47,5:49,8:55,67:141,34:111,35:113,36:115,37:117,16:27,32:107,19:89,44:43,60:27,58:27,27:27,28:99,29:101,30:103,31:105},29:{16:83,58:133},30:{0:29,33:29,2:29,3:29,4:29,5:29,8:29,67:29,34:29,35:29,36:29,37:29,16:29,32:29,19:29,44:29,60:29,58:29,27:29,28:29,29:29,30:29,31:29},31:{0:31,33:31,2:31,3:31,4:31,5:31,8:31,67:31,34:31,35:31,36:31,37:31,16:31,32:31,19:31,44:31,60:31,58:31,27:31,28:31,29:31,30:31,31:31}}
;_prodList = 
[[33,2],[27,1],[27,6],[27,4],[27,1],[27,3],[27,4],[29,0],[29,1],[29,3],[28,1],[28,3],[28,3],[28,3],[28,3],[28,3],[28,3],[28,3],[28,3],[28,3],[28,3],[28,2],[28,2],[28,1],[28,4],[28,2],[28,6],[28,2],[31,3],[32,0],[32,3],[32,1],[30,1],[30,1]]
;_inputTable = 
{"<$>":1,"id":2,".":3,"(":4,")":5,"[":6,"]":7,",":8,"+":9,"|":10,"&":11,"-":12,"*":13,"/":14,"<<":15,">>":16,">>>":17,"~":18,"{":19,"}":20,"new":21,"RegExp":22,"string":23,"RegExpLiteral":24,"hex":25,"int":26}
;
        }
        
        public function parse(lexer:org.lala.gen.JsLexer):*
        {
            var _stateStack:Array = [0];
            var _outputStack:Array = [];
            var _state:uint;
            var _token:*;
            var _act:uint;
            ;

            while(true)
            {
                _token = lexer.token;
                _state = _stateStack[_stateStack.length - 1];
                if(_actionTable[_inputTable[_token]][_state] == null)
                {
                    throw new Error("Parse Error:" + lexer.positionInfo);
                }
                else
                {
                    _act = _actionTable[_inputTable[_token]][_state];
                }
                if(_act == 1)
                {
                    return _outputStack.pop();//acc
                }
                else if((_act & 1) == 1)//shift
                {
                    _outputStack.push(lexer.yytext);
                    _stateStack.push((_act >>> 1) - 1);
                    lexer.advance();
                }
                else if((_act & 1) == 0)//reduce
                {
                    var _pi:uint = _act >>> 1;
                    var _length:uint = _prodList[_pi][1];
                    var _result:* = null;
                    /** actions applying **/
                    /** default action **/
                    if(_length > 0)
                        _result = _outputStack[_outputStack.length - _length];
                    switch(_pi)
{
case 0x1:

break;
case 0x2:
 _result = ['mcall', _outputStack[_outputStack.length - 6], _outputStack[_outputStack.length - 4], _outputStack[_outputStack.length - 2]]; 
break;
case 0x3:
 _result = ['call', _outputStack[_outputStack.length - 4], _outputStack[_outputStack.length - 2]]; 
break;
case 0x4:

break;
case 0x5:
 _result = _outputStack[_outputStack.length - 2]; 
break;
case 0x6:
 _result = ['index', _outputStack[_outputStack.length - 4], _outputStack[_outputStack.length - 2]]; 
break;
case 0x7:
 _result = []; 
break;
case 0x8:
 _result = [_outputStack[_outputStack.length - 1]]; 
break;
case 0x9:
 _outputStack[_outputStack.length - 3].push(_outputStack[_outputStack.length - 1]); _result = _outputStack[_outputStack.length - 3]; 
break;
case 0xA:
 _result = _outputStack[_outputStack.length - 1]; 
break;
case 0xB:
 _result = _outputStack[_outputStack.length - 2]; 
break;
case 0xC:
 _result = _outputStack[_outputStack.length - 3] + _outputStack[_outputStack.length - 1]; 
break;
case 0xD:
 _result = _outputStack[_outputStack.length - 3] | _outputStack[_outputStack.length - 1]; 
break;
case 0xE:
 _result = _outputStack[_outputStack.length - 3] & _outputStack[_outputStack.length - 1]; 
break;
case 0xF:
 _result = _outputStack[_outputStack.length - 3] - _outputStack[_outputStack.length - 1]; 
break;
case 0x10:
 _result = _outputStack[_outputStack.length - 3] * _outputStack[_outputStack.length - 1]; 
break;
case 0x11:
 _result = _outputStack[_outputStack.length - 3] / _outputStack[_outputStack.length - 1]; 
break;
case 0x12:
 _result = _outputStack[_outputStack.length - 3] << _outputStack[_outputStack.length - 1]; 
break;
case 0x13:
 _result = _outputStack[_outputStack.length - 3] >> _outputStack[_outputStack.length - 1]; 
break;
case 0x14:
 _result = _outputStack[_outputStack.length - 3] >>> _outputStack[_outputStack.length - 1]; 
break;
case 0x15:
 _result = ~_outputStack[_outputStack.length - 1]; 
break;
case 0x16:
 _result = -_outputStack[_outputStack.length - 1] 
break;
case 0x17:

break;
case 0x18:
 _result = _outputStack[_outputStack.length - 4][_outputStack[_outputStack.length - 2]]; 
break;
case 0x19:
 _result = {}; 
break;
case 0x1A:
 _result = Number(String(_outputStack[_outputStack.length - 1]).match(new RegExp(_outputStack[_outputStack.length - 3]))[0]); 
break;
case 0x1B:
 _result = Number(String(_outputStack[_outputStack.length - 1]).match(new RegExp(_outputStack[_outputStack.length - 2]))[0]); 
break;
case 0x1C:
 _result = _outputStack[_outputStack.length - 2]; 
break;
case 0x1D:
 _result = [] 
break;
case 0x1E:
 _outputStack[_outputStack.length - 1].unshift(_outputStack[_outputStack.length - 3]); _result = _outputStack[_outputStack.length - 1]; 
break;
case 0x1F:
 _result = [_outputStack[_outputStack.length - 1]]; 
break;
case 0x20:

break;
case 0x21:

break;
}
                    /** actions applying end **/
                    var _i:uint = 0;
                    while(_i < _length)
                    {
                        _stateStack.pop();
                        _outputStack.pop();
                        _i ++;
                    }
                    _state = _stateStack[_stateStack.length - 1];
                    if(_gotoTable[_prodList[_pi][0]][_state] == null)
                    {
                        throw new Error("Goto Error!" + lexer.positionInfo);
                    }
                    else
                    {
                        _act = _gotoTable[_prodList[_pi][0]][_state];
                    }
                    _stateStack.push((_act >>> 1) - 1);
                    _outputStack.push(_result);
                }
            }
        }

		public static function parse(source:String):Object
		{
			var lexer:org.lala.gen.JsLexer = new org.lala.gen.JsLexer();
			lexer.source = source;
			var parser:JsParser = new JsParser();
			var result:Object = parser.parse(lexer);
			return result;
		}
    }
}