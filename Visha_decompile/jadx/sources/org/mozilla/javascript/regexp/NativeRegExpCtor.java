package org.mozilla.javascript.regexp;

import org.mozilla.javascript.BaseFunction;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.IdScriptableObject;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.TopLevel;
import org.mozilla.javascript.Undefined;

class NativeRegExpCtor extends BaseFunction {
    private static final long serialVersionUID = -5733330028285400526L;
    private int multilineAttr = 4;
    private int starAttr = 4;
    private int inputAttr = 4;
    private int underscoreAttr = 4;

    public static RegExpImpl b() {
        return (RegExpImpl) ScriptRuntime.getRegExpProxy(Context.getCurrentContext());
    }

    @Override
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (objArr.length > 0) {
            Object obj = objArr[0];
            if ((obj instanceof NativeRegExp) && (objArr.length == 1 || objArr[1] == Undefined.instance)) {
                return obj;
            }
        }
        return construct(context, scriptable, objArr);
    }

    @Override
    public Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) {
        NativeRegExp nativeRegExp = new NativeRegExp();
        nativeRegExp.compile(context, scriptable, objArr);
        ScriptRuntime.setBuiltinProtoAndParent(nativeRegExp, scriptable, TopLevel.Builtins.RegExp);
        return nativeRegExp;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:89:0x0104  */
    /* JADX WARN: Code duplicated, block: B:91:0x0109 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x010b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:93:0x010d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:94:0x010f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x0112  */
    /* JADX WARN: Code duplicated, block: B:97:0x0115  */
    /* JADX WARN: Code duplicated, block: B:98:0x0118  */
    /* JADX WARN: Code duplicated, block: B:99:0x011b  */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00ea, code lost:
    
        if (r11.charAt(0) == '$') goto L88;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int findInstanceIdInfo(String str) {
        String str2;
        int length = str.length();
        int i = 12;
        int i2 = 5;
        if (length != 2) {
            if (length == 5) {
                str2 = "input";
                i = 3;
            } else if (length == 9) {
                char cCharAt = str.charAt(4);
                if (cCharAt == 'M') {
                    str2 = "lastMatch";
                    i = 5;
                } else if (cCharAt == 'P') {
                    str2 = "lastParen";
                    i = 7;
                } else if (cCharAt == 'i') {
                    str2 = "multiline";
                    i = 1;
                }
            } else if (length == 11) {
                str2 = "leftContext";
                i = 9;
            } else if (length == 12) {
                str2 = "rightContext";
                i = 11;
            }
            if (str2 != null && str2 != str && !str2.equals(str)) {
                i = 0;
            }
            if (i == 0) {
                return super.findInstanceIdInfo(str);
            }
            if (i == 1) {
                i2 = this.multilineAttr;
            } else if (i == 2) {
                i2 = this.starAttr;
            } else if (i == 3) {
                i2 = this.inputAttr;
            } else if (i == 4) {
                i2 = this.underscoreAttr;
            }
            return IdScriptableObject.instanceIdInfo(i2, super.getMaxInstanceId() + i);
        }
        char cCharAt2 = str.charAt(1);
        if (cCharAt2 != '&') {
            if (cCharAt2 != '\'') {
                if (cCharAt2 != '*') {
                    if (cCharAt2 != '+') {
                        if (cCharAt2 != '_') {
                            if (cCharAt2 != '`') {
                                switch (cCharAt2) {
                                    case '1':
                                        if (str.charAt(0) == '$') {
                                            i = 13;
                                        }
                                        break;
                                    case '2':
                                        if (str.charAt(0) == '$') {
                                            i = 14;
                                        }
                                        break;
                                    case '3':
                                        if (str.charAt(0) == '$') {
                                            i = 15;
                                        }
                                        break;
                                    case '4':
                                        if (str.charAt(0) == '$') {
                                            i = 16;
                                        }
                                        break;
                                    case '5':
                                        if (str.charAt(0) == '$') {
                                            i = 17;
                                        }
                                        break;
                                    case '6':
                                        if (str.charAt(0) == '$') {
                                            i = 18;
                                        }
                                        break;
                                    case '7':
                                        if (str.charAt(0) == '$') {
                                            i = 19;
                                        }
                                        break;
                                    case '8':
                                        if (str.charAt(0) == '$') {
                                            i = 20;
                                        }
                                        break;
                                    case '9':
                                        if (str.charAt(0) == '$') {
                                            i = 21;
                                        }
                                        break;
                                }
                            } else if (str.charAt(0) == '$') {
                                i = 10;
                            }
                        } else if (str.charAt(0) == '$') {
                            i = 4;
                        }
                    } else if (str.charAt(0) == '$') {
                        i = 8;
                    }
                } else if (str.charAt(0) == '$') {
                    i = 2;
                }
            }
        } else if (str.charAt(0) == '$') {
            i = 6;
        }
        if (i == 0) {
            return super.findInstanceIdInfo(str);
        }
        if (i == 1) {
            i2 = this.multilineAttr;
        } else if (i == 2) {
            i2 = this.starAttr;
        } else if (i == 3) {
            i2 = this.inputAttr;
        } else if (i == 4) {
            i2 = this.underscoreAttr;
        }
        return IdScriptableObject.instanceIdInfo(i2, super.getMaxInstanceId() + i);
        str2 = null;
        i = 0;
        if (str2 != null) {
            i = 0;
        }
        if (i == 0) {
            return super.findInstanceIdInfo(str);
        }
        if (i == 1) {
            i2 = this.multilineAttr;
        } else if (i == 2) {
            i2 = this.starAttr;
        } else if (i == 3) {
            i2 = this.inputAttr;
        } else if (i == 4) {
            i2 = this.underscoreAttr;
        }
        return IdScriptableObject.instanceIdInfo(i2, super.getMaxInstanceId() + i);
    }

    @Override
    public int getArity() {
        return 2;
    }

    @Override
    public String getFunctionName() {
        return "RegExp";
    }

    @Override
    public String getInstanceIdName(int i) {
        int maxInstanceId = i - super.getMaxInstanceId();
        if (1 > maxInstanceId || maxInstanceId > 21) {
            return super.getInstanceIdName(i);
        }
        switch (maxInstanceId) {
            case 1:
                return "multiline";
            case 2:
                return "$*";
            case 3:
                return "input";
            case 4:
                return "$_";
            case 5:
                return "lastMatch";
            case 6:
                return "$&";
            case 7:
                return "lastParen";
            case 8:
                return "$+";
            case 9:
                return "leftContext";
            case 10:
                return "$`";
            case 11:
                return "rightContext";
            case 12:
                return "$'";
            default:
                return new String(new char[]{'$', (char) (maxInstanceId + 36)});
        }
    }

    @Override
    public Object getInstanceIdValue(int i) {
        Object parenSubString;
        int maxInstanceId = i - super.getMaxInstanceId();
        if (1 > maxInstanceId || maxInstanceId > 21) {
            return super.getInstanceIdValue(i);
        }
        RegExpImpl regExpImplB = b();
        switch (maxInstanceId) {
            case 1:
            case 2:
                return ScriptRuntime.wrapBoolean(regExpImplB.multiline);
            case 3:
            case 4:
                parenSubString = regExpImplB.input;
                break;
            case 5:
            case 6:
                parenSubString = regExpImplB.lastMatch;
                break;
            case 7:
            case 8:
                parenSubString = regExpImplB.lastParen;
                break;
            case 9:
            case 10:
                parenSubString = regExpImplB.leftContext;
                break;
            case 11:
            case 12:
                parenSubString = regExpImplB.rightContext;
                break;
            default:
                parenSubString = regExpImplB.getParenSubString(maxInstanceId - 13);
                break;
        }
        return parenSubString == null ? "" : parenSubString.toString();
    }

    @Override
    public int getLength() {
        return 2;
    }

    @Override
    public int getMaxInstanceId() {
        return super.getMaxInstanceId() + 21;
    }

    @Override
    public void setInstanceIdAttributes(int i, int i2) {
        int maxInstanceId = i - super.getMaxInstanceId();
        switch (maxInstanceId) {
            case 1:
                this.multilineAttr = i2;
                break;
            case 2:
                this.starAttr = i2;
                break;
            case 3:
                this.inputAttr = i2;
                break;
            case 4:
                this.underscoreAttr = i2;
                break;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                break;
            default:
                int i3 = maxInstanceId - 13;
                if (i3 < 0 || i3 > 8) {
                    super.setInstanceIdAttributes(i, i2);
                }
                break;
        }
    }

    @Override
    public void setInstanceIdValue(int i, Object obj) {
        int maxInstanceId = i - super.getMaxInstanceId();
        switch (maxInstanceId) {
            case 1:
            case 2:
                b().multiline = ScriptRuntime.toBoolean(obj);
                break;
            case 3:
            case 4:
                b().input = ScriptRuntime.toString(obj);
                break;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                break;
            default:
                int i2 = maxInstanceId - 13;
                if (i2 < 0 || i2 > 8) {
                    super.setInstanceIdValue(i, obj);
                }
                break;
        }
    }
}
