package org.lala.gen
{
    
    public class JsLexer
    {
        protected var _transTable:Array;
        protected var _finalTable:Object;
        protected var _inputTable:Array;
        protected var _initialTable:Object;
        protected const DEADSTATE:uint = uint.MAX_VALUE;
        
        protected var _start:uint;
        protected var _oldStart:uint;
        protected var _tokenName:String;
        protected var _yytext:*;
        protected var _yy:Object;
        protected var _ended:Boolean;
        protected var _initialInput:Number;
        protected var _initialState:String;
        
        protected var _line:uint;
        protected var _col:uint;
        protected var _advanced:Boolean;
        
        protected var _source:String;
        ;

        public function JsLexer()
        {
            _transTable = 
[[false,[4294967295,1],[[0,41,0],[42,42,1]]],[false,[35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,4294967295],[[0,0,0],[1,1,1],[2,2,2],[3,3,3],[4,4,4],[5,5,5],[6,6,6],[7,7,7],[8,8,8],[9,9,9],[10,10,10],[11,11,11],[12,12,12],[13,13,13],[14,14,14],[15,15,15],[16,16,16],[17,17,17],[18,18,18],[19,19,19],[20,20,20],[21,21,21],[22,22,22],[23,23,23],[24,24,24],[25,25,25],[26,26,26],[27,27,27],[28,28,28],[29,29,29],[30,37,30],[38,38,31],[39,39,32],[40,41,33],[42,42,34]]],[true],[false,[4294967295,6,36],[[0,28,0],[29,29,1],[30,36,0],[37,37,2],[38,38,0],[39,39,1],[40,42,0]]],[true],[false,[4294967295,5],[[0,26,0],[27,37,1],[38,38,0],[39,39,1],[40,42,0]]],[false,[4294967295,6],[[0,28,0],[29,29,1],[30,38,0],[39,39,1],[40,42,0]]],[false,[4294967295,5,37],[[0,26,0],[27,29,1],[30,30,2],[31,37,1],[38,38,0],[39,39,1],[40,42,0]]],[false,[4294967295,5,38],[[0,26,0],[27,29,1],[30,30,2],[31,37,1],[38,38,0],[39,39,1],[40,42,0]]],[true],[true],[false,[39,40,4294967295],[[0,23,0],[24,24,1],[25,39,0],[40,40,2],[41,41,0],[42,42,2]]],[false,[41,40,4294967295],[[0,22,0],[23,23,1],[24,39,0],[40,40,2],[41,41,0],[42,42,2]]],[false,[4294967295,42],[[0,21,0],[22,22,1],[23,42,0]]],[false,[4294967295,44,43],[[0,20,0],[21,21,1],[22,22,2],[23,42,0]]],[false,[45,4294967295,46],[[0,19,0],[20,20,1],[21,21,0],[22,22,2],[23,39,0],[40,40,1],[41,41,0],[42,42,1]]],[false,[4294967295,47],[[0,21,0],[22,22,1],[23,42,0]]],[true],[true],[true],[false,[4294967295,49,48],[[0,14,0],[15,15,1],[16,21,0],[22,22,2],[23,42,0]]],[false,[4294967295,50],[[0,21,0],[22,22,1],[23,42,0]]],[false,[4294967295,53,52,51],[[0,4,0],[5,5,1],[6,12,0],[13,13,2],[14,21,0],[22,22,3],[23,42,0]]],[true],[false,[4294967295,54],[[0,10,0],[11,11,1],[12,42,0]]],[true],[false,[4294967295,56,55],[[0,8,0],[9,9,1],[10,21,0],[22,22,2],[23,42,0]]],[true],[true],[false,[4294967295,57],[[0,5,0],[6,6,1],[7,42,0]]],[false,[4294967295,59,58],[[0,4,0],[5,5,1],[6,21,0],[22,22,2],[23,42,0]]],[false,[4294967295,61,60],[[0,3,0],[4,4,1],[5,21,0],[22,22,2],[23,42,0]]],[true],[true],[false,[4294967295,63,62],[[0,0,0],[1,1,1],[2,21,0],[22,22,2],[23,42,0]]],[false,[65,4294967295,64],[[0,0,0],[1,21,1],[22,22,2],[23,42,1]]],[false,[4294967295,66],[[0,28,0],[29,30,1],[31,34,0],[35,36,1],[37,38,0],[39,39,1],[40,42,0]]],[false,[4294967295,5,67],[[0,26,0],[27,30,1],[31,31,2],[32,37,1],[38,38,0],[39,39,1],[40,42,0]]],[false,[4294967295,5,68],[[0,26,0],[27,33,1],[34,34,2],[35,37,1],[38,38,0],[39,39,1],[40,42,0]]],[false,[39,40,4294967295],[[0,23,0],[24,24,1],[25,39,0],[40,40,2],[41,41,0],[42,42,2]]],[true],[false,[41,40,4294967295],[[0,22,0],[23,23,1],[24,39,0],[40,40,2],[41,41,0],[42,42,2]]],[false,[4294967295,69],[[0,21,0],[22,22,1],[23,42,0]]],[true],[true],[false,[45,70,4294967295],[[0,19,0],[20,20,1],[21,39,0],[40,40,2],[41,41,0],[42,42,2]]],[false,[45,70,4294967295],[[0,19,0],[20,20,1],[21,39,0],[40,40,2],[41,41,0],[42,42,2]]],[false,[4294967295,71],[[0,21,0],[22,22,1],[23,42,0]]],[true],[true],[true],[true],[true],[true],[false,[4294967295,72],[[0,10,0],[11,11,1],[12,42,0]]],[true],[false,[4294967295,73],[[0,21,0],[22,22,1],[23,42,0]]],[true],[true],[false,[4294967295,75,74],[[0,4,0],[5,5,1],[6,21,0],[22,22,2],[23,42,0]]],[true],[false,[4294967295,76],[[0,21,0],[22,22,1],[23,42,0]]],[true],[false,[4294967295,77],[[0,21,0],[22,22,1],[23,42,0]]],[true],[false,[4294967295,78],[[0,21,0],[22,22,1],[23,42,0]]],[false,[4294967295,66],[[0,28,0],[29,30,1],[31,34,0],[35,36,1],[37,38,0],[39,39,1],[40,42,0]]],[false,[4294967295,5],[[0,26,0],[27,37,1],[38,38,0],[39,39,1],[40,42,0]]],[false,[4294967295,5,79],[[0,26,0],[27,34,1],[35,35,2],[36,37,1],[38,38,0],[39,39,1],[40,42,0]]],[true],[true],[true],[true],[true],[true],[false,[4294967295,80],[[0,21,0],[22,22,1],[23,42,0]]],[true],[true],[true],[false,[4294967295,5,81],[[0,26,0],[27,36,1],[37,37,2],[38,38,0],[39,39,1],[40,42,0]]],[true],[false,[4294967295,5,82],[[0,26,0],[27,31,1],[32,32,2],[33,37,1],[38,38,0],[39,39,1],[40,42,0]]],[false,[4294967295,5],[[0,26,0],[27,37,1],[38,38,0],[39,39,1],[40,42,0]]]]
;_finalTable = 
{2:0,3:2,4:124,5:5,6:2,7:5,8:5,9:15,10:14,11:124,12:124,13:57,14:32,15:48,16:8,17:31,18:9,19:38,20:41,21:39,22:44,23:43,24:47,25:68,26:69,27:73,28:16,29:50,30:60,31:34,32:66,33:52,34:53,35:74,37:5,38:5,40:6,42:58,43:33,44:125,46:49,47:29,48:42,49:10,50:40,51:45,52:11,53:46,54:12,55:70,56:71,57:51,58:61,59:62,60:37,61:35,62:56,63:54,64:75,65:76,66:1,67:3,68:5,69:59,70:7,71:30,72:13,73:72,74:63,75:64,76:36,77:55,78:77,79:5,80:65,81:5,82:4}
;_inputTable = 
[[0,8,38],[9,9,41],[10,10,40],[11,12,38],[13,13,40],[14,31,38],[32,32,41],[33,33,19],[34,34,24],[35,35,18],[36,36,33],[37,37,21],[38,38,4],[39,39,23],[40,40,16],[41,41,17],[42,42,14],[43,43,15],[44,44,12],[45,45,13],[46,46,11],[47,47,20],[48,48,39],[49,57,29],[58,58,6],[59,59,2],[60,60,1],[61,61,22],[62,62,5],[63,63,3],[64,64,33],[65,68,36],[69,69,35],[70,70,36],[71,81,33],[82,82,27],[83,90,33],[91,91,10],[92,92,38],[93,93,25],[94,94,9],[95,95,33],[96,96,38],[97,100,36],[101,101,30],[102,102,36],[103,103,34],[104,109,33],[110,110,28],[111,111,33],[112,112,32],[113,118,33],[119,119,31],[120,120,37],[121,122,33],[123,123,8],[124,124,0],[125,125,26],[126,126,7],[127,65535,38]]
;_initialTable = 
{"INITIAL":1}
;
        }
        
        public function yyrestart(src:String=null):void
        {
            if(src != null)
            {
                _source = src;
            }
            _ended = false;
            _start = 0;
            _oldStart = 0;
            _line = 1;
            _col = 0;
            _advanced = true;
            _tokenName = null;
            _yy = {};
            initialState = "INITIAL";
            ;

        }
        
        public function set source(src:String):void
        {
            _source = src;
            yyrestart();
        }
        
        public function get token():String
        {
            if(_advanced)
            {
                _tokenName = next();
                _advanced = false;
            }
            return _tokenName;
        }
        
        public function advance():void
        {
            _advanced = true;
        }
        
        public function get startIdx():uint
        {
            return _oldStart;
        }
        
        public function get endIdx():uint
        {
            return _start;
        }
        
        public function get position():Array
        {
            return [_line,_col];
        }
        
        public function get positionInfo():String
        {
            return token + '@row:' + position.join('col:');   
        }
        
        public function get yytext():*
        {
            return _yytext;
        }
        
        public function get yyleng():uint
        {
            return endIdx - startIdx;
        }
        
        public function set yytext(value:*):void
        {
            _yytext = value;
        }
        
        public function get yy():Object
        {
            return _yy;
        }

        public function get tokenName():String
        {
            return _tokenName;
        }
        
        protected function next():String
        {
            var _findex:*;
            var _nextState:*;
            var _char:Number;
            var _begin:uint;
            var _next:uint;
            var _ochar:uint;
            var _curState:uint;
            var _lastFinalState:uint;
            var _lastFinalPosition:uint;
            
            while(true)
            {
                _findex = null;
                _nextState = null;
                _char = 0;
                _begin = _start;
                _next = _start;
                _ochar = uint.MAX_VALUE;
                _lastFinalState = DEADSTATE;
                _lastFinalPosition = _start;
                _curState = _transTable[0][1][_initialInput];
                while(true)
                {
                    _char = _source.charCodeAt(_next);
                    /** 计算行,列位置 **/
                    if(_ochar != uint.MAX_VALUE)
                    {
                        if(_char == 0x0d)//\r
                        {
                            _col = 0;
                            _line ++;
                        }
                        else if(_char == 0x0a)//\n
                        {
                            if(_ochar != 0x0d)// != \r
                            {
                                _col = 0;
                                _line ++;
                            }
                        }
                        else
                        {
                            _col ++;
                        }
                    }
                    _ochar = _char;
                    /** 计算行,列位置--结束 **/
                    _nextState = trans(_curState, _char);
                    if(_nextState == DEADSTATE)
                    {
                        if(_begin == _lastFinalPosition)
                        {
                            if(_start == _source.length)
                            {
                                if(_ended == false)
                                {
                                    _ended = true;
                                    return "<$>";
                                }
                                else
                                {
                                    throw new Error("已经到达末尾.");
                                }                    
                            }
                            throw new Error("意外的字符,line:" + position.join(",col:") + 'of ' + _source.substr(_begin,20));
                        }
                        else
                        {
                            _findex = _finalTable[_lastFinalState];
                            _start = _lastFinalPosition;
                            _oldStart = _begin;
                            _yytext = _source.substring(startIdx, endIdx);
                            switch(_findex)
{
case 0x1:
    yytext = parseInt(yytext); return "hex";;
    break;
case 0x2:
    yytext = parseInt(yytext); return 'int';;
    break;
case 0x3:
    return 'new';
    break;
case 0x4:
    return 'RegExp';
    break;
case 0x5:
    return 'id';
    break;
case 0x6:
    yytext = yytext.substr(1, yyleng - 2); return 'string';;
    break;
case 0x7:
    yytext = yytext.substr(1, yyleng - 2); return "RegExpLiteral";;
    break;
case 0x8:
    return 'op';
    break;
case 0x9:
    return ')';
    break;
case 0xA:
    return 'op';
    break;
case 0xB:
    return 'op';
    break;
case 0xC:
    return 'op';
    break;
case 0xD:
    return 'op';
    break;
case 0xE:
    return ']';
    break;
case 0xF:
    return '}';
    break;
case 0x10:
    return '~';
    break;
case 0x11:
    yytext = false; return 'boolean';
    break;
case 0x12:
    yytext = true; return 'boolean';
    break;
case 0x13:
    yytext = null; return 'null';
    break;
case 0x14:
    return 'kw';
    break;
case 0x15:
    return 'kw';
    break;
case 0x16:
    return 'kw';
    break;
case 0x17:
    return 'kw';
    break;
case 0x18:
    return 'kw';
    break;
case 0x19:
    return 'kw';
    break;
case 0x1A:
    return 'kw';
    break;
case 0x1B:
    return 'kw';
    break;
case 0x1C:
    return 'kw';
    break;
case 0x1D:
    return 'op';
    break;
case 0x1E:
    return 'op';
    break;
case 0x1F:
    return 'op';
    break;
case 0x20:
    return 'op';
    break;
case 0x21:
    return 'op';
    break;
case 0x22:
    return '&';
    break;
case 0x23:
    return 'op';
    break;
case 0x24:
    return 'op';
    break;
case 0x25:
    return 'op';
    break;
case 0x26:
    return '(';
    break;
case 0x27:
    return '*';
    break;
case 0x28:
    return 'op';
    break;
case 0x29:
    return '+';
    break;
case 0x2A:
    return 'op';
    break;
case 0x2B:
    return ',';
    break;
case 0x2C:
    return '-';
    break;
case 0x2D:
    return 'op';
    break;
case 0x2E:
    return 'op';
    break;
case 0x2F:
    return '.';
    break;
case 0x30:
    return '/';
    break;
case 0x31:
    return 'op';
    break;
case 0x32:
    return 'op';
    break;
case 0x33:
    return 'op';
    break;
case 0x35:
    return 'op';
    break;
case 0x36:
    return '<<';
    break;
case 0x37:
    return 'op';
    break;
case 0x38:
    return 'op';
    break;
case 0x3A:
    return 'op';
    break;
case 0x3B:
    return 'op';
    break;
case 0x3C:
    return 'op';
    break;
case 0x3D:
    return 'op';
    break;
case 0x3E:
    return '>>';
    break;
case 0x3F:
    return 'op';
    break;
case 0x40:
    return '>>>';
    break;
case 0x41:
    return 'op';
    break;
case 0x42:
    return 'op';
    break;
case 0x43:
    return 'op';
    break;
case 0x44:
    return '[';
    break;
case 0x45:
    return 'op';
    break;
case 0x46:
    return 'op';
    break;
case 0x47:
    return 'op';
    break;
case 0x48:
    return 'op';
    break;
case 0x49:
    return '{';
    break;
case 0x4A:
    return '|';
    break;
case 0x4B:
    return 'op';
    break;
case 0x4C:
    return 'op';
    break;
case 0x4D:
    return 'op';
    break;
case 0x4E:
    return 'kw';
    break;
case 0x4F:
    return 'kw';
    break;
case 0x50:
    return 'kw';
    break;
case 0x51:
    return 'kw';
    break;
case 0x52:
    return 'kw';
    break;
case 0x53:
    return 'kw';
    break;
case 0x54:
    return 'kw';
    break;
case 0x55:
    return 'kw';
    break;
case 0x56:
    return 'kw';
    break;
case 0x57:
    return 'kw';
    break;
case 0x58:
    return 'kw';
    break;
case 0x59:
    return 'kw';
    break;
case 0x5A:
    return 'kw';
    break;
case 0x5B:
    return 'kw';
    break;
case 0x5C:
    return 'kw';
    break;
case 0x5D:
    return 'kw';
    break;
case 0x5E:
    return 'kw';
    break;
case 0x5F:
    return 'kw';
    break;
case 0x60:
    return 'kw';
    break;
case 0x61:
    return 'kw';
    break;
case 0x62:
    return 'kw';
    break;
case 0x63:
    return 'kw';
    break;
case 0x64:
    return 'kw';
    break;
case 0x65:
    return 'kw';
    break;
case 0x66:
    return 'kw';
    break;
case 0x67:
    return 'kw';
    break;
case 0x68:
    return 'kw';
    break;
case 0x69:
    return 'kw';
    break;
case 0x6A:
    return 'kw';
    break;
case 0x6B:
    return 'kw';
    break;
case 0x6C:
    return 'kw';
    break;
case 0x6D:
    return 'kw';
    break;
case 0x6E:
    return 'kw';
    break;
case 0x6F:
    return 'kw';
    break;
case 0x70:
    return 'kw';
    break;
case 0x71:
    return 'kw';
    break;
case 0x72:
    return 'kw';
    break;
case 0x73:
    return 'kw';
    break;
case 0x74:
    return 'kw';
    break;
case 0x75:
    return 'kw';
    break;
case 0x76:
    return 'kw';
    break;
case 0x77:
    return 'kw';
    break;
case 0x78:
    return 'kw';
    break;
case 0x79:
    return 'kw';
    break;
case 0x7A:
    return 'kw';
    break;
case 0x7B:
    return 'id';
    break;
case 0x7C:
    return 'other';;
    break;
}
                            break;
                        }
                    }
                    else
                    {
                        _findex = _finalTable[_nextState];
                        if(_findex != null)
                        {
                            _lastFinalState = _nextState;
                            _lastFinalPosition = _next + 1;
                        }
                        _next += 1;
                        _curState = _nextState;
                    }
                }
            }
            return "";//这里的值会影响返回值!!
        }
        protected function trans(curState:uint,char:Number):uint
        {
            if(isNaN(char))
                return DEADSTATE;
            if(char < _inputTable[0][0] || char > _inputTable[_inputTable.length - 1][1])
                throw new Error("输入超出有效范围,line:" + position.join(",col:"));
            if(_transTable[curState][0] == true)
                return DEADSTATE;

            var ipt:int = find(char,_inputTable);
            var ipt2:int = find(ipt, _transTable[curState][2]);
            return _transTable[curState][1][ipt2];
        }
        
        protected function find(code:uint,seg:Array):uint
        {
            var min:uint;
            var max:uint;
            var mid:uint;
            min = 0;
            max = seg.length - 1;
            while(true)
            {
                mid = (min + max) >>> 1;
                if(seg[mid][0] <= code && seg[mid][1] >= code)
                {
                    return seg[mid][2];
                }
                else if(seg[mid][0] > code)
                {
                    max = mid - 1;
                }
                else
                {
                    min = mid + 1;
                }
            }
            return 0;
        }
        
        protected function begin(state:String=null):void
        {
            if(state == null)
            {
                initialState = "INITIAL";
                return;
            }
            initialState = state;
        }
        
        protected function get initialState():String
        {
            return _initialState;
        }

        protected function set initialState(value:String):void
        {
            if(_initialTable[value] === undefined)
            {
                throw new Error("未定义的起始状态:" + value);
            }
            _initialState = value;
            _initialInput = _initialTable[value];
        }

		public static function lex_seq(source:String):Array
		{
			var lexer:JsLexer = new JsLexer();
			lexer.source = source;
			var tokens:Array = [];
			var token:String = lexer.token;
			while(token != '<$>')
			{
				tokens.push({token: token, text: lexer.yytext, start: lexer.startIdx, end: lexer.endIdx});
				lexer.advance();
				token = lexer.token;
			}
			return tokens;
		}
    }
}
