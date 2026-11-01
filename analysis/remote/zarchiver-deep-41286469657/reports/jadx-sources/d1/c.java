package d1;

import android.util.SparseIntArray;

public final class c extends b {

    public final int f570a;

    public final SparseIntArray f571b = new SparseIntArray();

    public final int f572c;

    public final int f573d;

    public final int f574e;

    public final String f575f;

    public final int f576g;

    public final char f577h;

    public c(int i2) {
        this.f570a = i2;
        if (i2 == 1) {
            this.f572c = 0;
            this.f573d = 2;
            this.f574e = 1;
            this.f575f = "+-*/\\=?!{}[]():;|&^%<>.,";
            this.f576g = 0;
            this.f577h = '#';
            g(1, "break,continue,do,else,for,if,return,while,auto,case,const,default,enum,extern,goto,inline,register,signed,sizeof,static,struct,switch,typedef,union,unsigned,void,volatile,char,double,short,int,long,float,uint,ulong,catch,class,delete,import,new,operator,private,protected,public,this,throw,try,typeof");
            g(1, "alignof,align_union,asm,axiom,bool,concept,concept_map,const_cast,constexpr,decltype,delegate,dynamic_cast,explicit,export,friend,generic,late_check,mutable,namespace,nullptr,property,reinterpret_cast,static_assert,static_cast,template,typeid,typename,using,virtual,where,DIR,FILE,");
            g(6, "true,false,NULL,nullptr");
            return;
        }
        if (i2 == 2) {
            this.f572c = 0;
            this.f573d = 2;
            this.f574e = 1;
            this.f575f = "+-*/\\=?!{}[]():;|&^%<>.,";
            this.f576g = 0;
            this.f577h = '@';
            g(1, "break,continue,do,else,for,if,return,while,auto,case,const,default,enum,extern,goto,inline,register,signed,sizeof,static,struct,switch,typedef,union,unsigned,void,volatile,char,double,short,int,long,float,uint,ulong,catch,class,delete,import,new,operator,private,protected,public,this,throw,try,typeof");
            g(1, "abstract,assert,boolean,byte,extends,final,finally,implements,import,instanceof,interface,null,native,package,strictfp,super,synchronized,throws,transient");
            g(6, "true,false,null");
            return;
        }
        if (i2 == 3) {
            this.f572c = 0;
            this.f573d = 2;
            this.f574e = 1;
            this.f575f = "+-*/\\=?!{}[]():;|&^%<>.,@";
            this.f576g = 0;
            this.f577h = (char) 0;
            g(1, "break,continue,do,else,for,if,return,while");
            g(1, "abstract,alignof,as,async,await,assert,box,const,crate,copy,dyn,drop,enum,extern,fn,final,fail,impl,in,loop,let,macro,match,mod,move,mut,offsetof,override,priv,proc,pub,pure,ref,self,sizeof,static,struct,super,trait,type,typeof,union,unsafe,unsized,use,virtual,where,yield,isize,usize,str,char,bool");
            g(6, "true,false,Some,None,Ok,Err");
            return;
        }
        if (i2 == 4) {
            this.f572c = 0;
            this.f573d = 2;
            this.f574e = 1;
            this.f575f = "+-*/\\=?!{}[]():;|&^%<>.,";
            this.f576g = 0;
            this.f577h = (char) 0;
            g(1, "break,continue,do,else,for,if,return,while,auto,case,const,default,enum,extern,goto,inline,register,signed,sizeof,static,struct,switch,typedef,union,unsigned,void,volatile,char,double,short,int,long,float,uint,ulong,catch,class,delete,import,new,operator,private,protected,public,this,throw,try,typeof");
            g(1, "abstract,assert,boolean,byte,extends,final,finally,implements,import,instanceof,interface,null,native,package,strictfp,super,synchronized,throws,transient,as,base,by,checked,delegate,descending,dynamic,event,fixed,foreach,from,group,implicit,in,internal,into,is,let,lock,object,out,override,orderby,params,partial,readonly,ref,sealed,stackalloc,select,unchecked,unsafe,var,virtual,where,namespace,usingAction,Boolean,Byte,Char,DateTime,DateTimeOffset,Decimal,Double,Func,Guid,Int16,Int32,Int64,Object,SByte,Single,String,Task,TimeSpan,UInt16,UInt32,UInt64,bool,decimal,object,sbyte,string,ushort");
            g(6, "true,false,null");
            return;
        }
        if (i2 == 5) {
            this.f572c = 0;
            this.f573d = 3;
            this.f574e = 0;
            this.f575f = "+-*/\\=?!{}[]():;|&^%<>.,";
            this.f576g = 0;
            this.f577h = (char) 0;
            g(1, "break,case,chan,const,continue,default,defer,else,fallthrough,for,func,go,goto,if,import,interface,map,package,range,return,select,struct,switch,type,var,bool,byte,complex64,complex128,float32,float64,int8,int16,int32,int64,string,uint8,uint16,uint32,uint64,int,uint,uintptr,error,rune,any,comparable");
            g(6, "true,false,nil,iota");
            return;
        }
        if (i2 == 6) {
            this.f572c = 0;
            this.f573d = 11;
            this.f574e = 0;
            this.f575f = "+-*/\\=?!{}[]():;|&^%<>.,";
            this.f576g = 0;
            this.f577h = (char) 0;
            g(1, "break,continue,do,else,for,if,return,while,auto,case,const,default,enum,extern,goto,inline,register,signed,sizeof,static,struct,switch,typedef,union,unsigned,void,volatile,char,double,short,int,long,float,uint,ulong,catch,class,delete,import,new,operator,private,protected,public,this,throw,try,typeof");
            g(1, "debugger,eval,export,function,get,null,set,undefined,var,with,Infinity,NaN");
            g(6, "true,false,null,undefined,NaN,Infinity");
            return;
        }
        if (i2 == 7) {
            this.f572c = 0;
            this.f573d = 3;
            this.f574e = 0;
            this.f575f = "+-*/\\=?!{}[]():;|&^%<>.,@";
            this.f576g = 0;
            this.f577h = (char) 0;
            g(1, "break,continue,do,else,for,if,return,while");
            g(1, "abstract,and,array,as,case,catch,class,clone,const,declare,default,elseif,enddeclare,endfor,endforeach,endif,endswitch,endwhile,enum,extends,final,foreach,function,global,goto,implements,interface,instanceof,namespace,new,or,private,protected,public,static,switch,throw,trait,try,use,var,xor,die,echo,empty,exit,eval,include,include_once,isset,list,require,require_once,print,unset,__halt_compiler,self,static,parent,yield,insteadof,finally,readonly,match");
            g(6, "true,false,null,TRUE,FALSE,NULL");
            return;
        }
        if (i2 == 8) {
            this.f572c = 1;
            this.f573d = 3;
            this.f574e = 0;
            this.f575f = "+-*/\\=?!{}[]():;|&^%<>.,";
            this.f576g = 1;
            this.f577h = (char) 0;
            g(1, "break,continue,do,else,for,if,return,while");
            g(1, "and,as,assert,class,def,del,elif,except,exec,finally,from,global,import,in,is,lambda,nonlocal,not,or,pass,print,raise,try,with,yield,False,True,None");
            return;
        }
        if (i2 == 9) {
            this.f572c = 1;
            this.f573d = 7;
            this.f574e = 0;
            this.f575f = "+-*/\\=?!{}[]():;|&^%<>.,";
            this.f576g = 1;
            this.f577h = (char) 0;
            g(1, "break,continue,do,else,for,if,return,while");
            g(1, "alias,and,begin,case,class,def,defined,elsif,end,ensure,in,module,next,nil,not,or,redo,rescue,retry,self,super,then,undef,unless,until,when,yield,BEGIN,END");
            g(6, "true,false");
            return;
        }
        if (i2 != 10) {
            throw new IllegalArgumentException();
        }
        this.f572c = 1;
        this.f573d = 7;
        this.f574e = 0;
        this.f575f = "+-*/\\=?!{}[]():;|&^%<>.,";
        this.f576g = 1;
        this.f577h = (char) 0;
        g(1, "break,continue,do,else,for,if,return,while");
        g(1, "case,done,elif,esac,eval,fi,function,in,local,set,then,until");
        g(6, "true,false");
    }

    @Override
    public final byte a(byte b2, char c2, char[] cArr, int i2) {
        byte b3 = b2;
        if (b3 == 5) {
            return (byte) 5;
        }
        if (b3 == 8) {
            return (byte) 0;
        }
        if (b3 == 7) {
            b3 = 0;
        }
        char c3 = i2 > 0 ? cArr[i2 - 1] : (char) 0;
        if ((b3 & 15) == 2) {
            if (c3 == '\\' && (i2 < 2 || cArr[i2 - 2] != '\\')) {
                return b3;
            }
            int i3 = b3 & 48;
            if (c2 == '\"') {
                if (i3 == 0) {
                    return (byte) 64;
                }
            } else if (c2 == '\'') {
                if (i3 == 16) {
                    return (byte) 64;
                }
            } else if (c2 != '`') {
                if (c2 == '/' && i3 == 48) {
                    return (byte) 64;
                }
            } else if (i3 == 32) {
                return (byte) 64;
            }
        } else if (b3 != 3) {
            if (this.f572c == 0) {
                if (c3 == '*' && c2 == '/') {
                    return (byte) 64;
                }
                if (b3 == 21) {
                    return b3;
                }
                if (c2 == this.f577h) {
                    return (byte) 8;
                }
                if (c2 == '/') {
                    int i4 = i2 + 1;
                    char c4 = i4 < cArr.length ? cArr[i4] : (char) 0;
                    if (c4 == '*') {
                        return (byte) 21;
                    }
                    if (c4 == '/') {
                        return (byte) 5;
                    }
                }
            } else if (c2 == '#') {
                return (byte) 5;
            }
            String str = this.f575f;
            int i5 = this.f573d;
            if (c2 == '\"') {
                if ((i5 & 2) != 0) {
                    return (byte) 2;
                }
            } else if (c2 == '\'') {
                if ((i5 & 1) != 0) {
                    return (byte) 18;
                }
                if ((this.f574e & 1) != 0) {
                    return (byte) 3;
                }
            } else if (c2 == '`') {
                if ((i5 & 4) != 0) {
                    return (byte) 34;
                }
            } else if (c2 == '/' && (8 & i5) != 0) {
                for (int i6 = i2 - 1; i6 >= 0; i6--) {
                    char c5 = cArr[i6];
                    if (!Character.isWhitespace(c5)) {
                        if (str.indexOf(c5) == -1) {
                            break;
                        }
                        return (byte) 50;
                    }
                }
            }
            if (b3 == 0 && str.indexOf(c2) != -1) {
                return (byte) 7;
            }
        } else if (c2 == '\'' && c3 != '\\') {
            return (byte) 64;
        }
        return b3;
    }

    @Override
    public final int c() {
        return this.f570a;
    }

    @Override
    public final byte d(byte b2) {
        if (b2 == 21) {
            return b2;
        }
        if ((b2 & 15) != 2 || (this.f576g & 1) == 0) {
            return (byte) 0;
        }
        return b2;
    }

    @Override
    public final byte e(byte b2) {
        if (b2 == 7) {
            return (byte) 0;
        }
        return b2;
    }

    @Override
    public final byte f(char[] cArr, int i2, int i3) {
        if (Character.isDigit(cArr[i2])) {
            return (byte) 4;
        }
        int i4 = 0;
        for (int i5 = i2; i5 < i3; i5++) {
            i4 = (i4 * 31) + cArr[i5];
        }
        int i6 = this.f571b.get(i4);
        if (i6 != 0) {
            return (byte) i6;
        }
        int i7 = this.f570a;
        if (i7 == 1 && i3 - i2 > 5 && cArr[i3 - 2] == '_' && cArr[i3 - 1] == 't') {
            return (byte) 1;
        }
        if (i7 != 9 || i3 - i2 >= 6) {
            return (byte) 12;
        }
        char c2 = cArr[i2];
        if (c2 != 'i' && c2 != 'u' && c2 != 'f') {
            return (byte) 12;
        }
        char c3 = cArr[i2 + 1];
        if (c3 != 's' && (c3 < '0' || c3 > '9')) {
            return (byte) 12;
        }
        char c4 = cArr[i3 - 1];
        return (c4 == 'e' || (c4 >= '0' && c4 <= '9')) ? (byte) 1 : (byte) 12;
    }

    public final void g(int i2, String str) {
        SparseIntArray sparseIntArray;
        int i3 = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i3);
            sparseIntArray = this.f571b;
            if (iIndexOf <= -1) {
                break;
            }
            if (i3 != iIndexOf) {
                String strSubstring = str.substring(i3, iIndexOf);
                int length = strSubstring.length();
                int iCharAt = 0;
                for (int i4 = 0; i4 < length; i4++) {
                    iCharAt = (iCharAt * 31) + strSubstring.charAt(i4);
                }
                sparseIntArray.put(iCharAt, i2);
            }
            i3 = iIndexOf + 1;
        }
        if (i3 < str.length()) {
            String strSubstring2 = str.substring(i3);
            int length2 = strSubstring2.length();
            int iCharAt2 = 0;
            for (int i5 = 0; i5 < length2; i5++) {
                iCharAt2 = (iCharAt2 * 31) + strSubstring2.charAt(i5);
            }
            sparseIntArray.put(iCharAt2, i2);
        }
    }
}
