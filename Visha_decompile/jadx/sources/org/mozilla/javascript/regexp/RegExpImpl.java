package org.mozilla.javascript.regexp;

import defpackage.ki4;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.RegExpProxy;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.Undefined;

public class RegExpImpl implements RegExpProxy {
    protected String input;
    protected SubString lastMatch;
    protected SubString lastParen;
    protected SubString leftContext;
    protected boolean multiline;
    protected SubString[] parens;
    protected SubString rightContext;

    private static NativeRegExp createRegExp(Context context, Scriptable scriptable, Object[] objArr, int i, boolean z) {
        Object obj;
        String string;
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        if (objArr.length == 0 || (obj = objArr[0]) == Undefined.instance) {
            return new NativeRegExp(topLevelScope, NativeRegExp.compileRE(context, "", "", false));
        }
        if (obj instanceof NativeRegExp) {
            return (NativeRegExp) obj;
        }
        String string2 = ScriptRuntime.toString(obj);
        if (i < objArr.length) {
            objArr[0] = string2;
            string = ScriptRuntime.toString(objArr[i]);
        } else {
            string = null;
        }
        return new NativeRegExp(topLevelScope, NativeRegExp.compileRE(context, string2, string, z));
    }

    private static void do_replace(ki4 ki4Var, Context context, RegExpImpl regExpImpl) {
        int i;
        StringBuilder sb = ki4Var.h;
        String str = ki4Var.f;
        int iIndexOf = ki4Var.g;
        int i2 = 0;
        if (iIndexOf != -1) {
            int[] iArr = new int[1];
            int i3 = 0;
            do {
                sb.append(str.substring(i3, iIndexOf));
                SubString subStringInterpretDollar = interpretDollar(context, regExpImpl, str, iIndexOf, iArr);
                if (subStringInterpretDollar != null) {
                    int i4 = subStringInterpretDollar.length;
                    if (i4 > 0) {
                        String str2 = subStringInterpretDollar.str;
                        int i5 = subStringInterpretDollar.index;
                        sb.append((CharSequence) str2, i5, i4 + i5);
                    }
                    int i6 = iArr[0];
                    int i7 = iIndexOf + i6;
                    i = iIndexOf + i6;
                    i3 = i7;
                } else {
                    i3 = iIndexOf;
                    i = iIndexOf + 1;
                }
                iIndexOf = str.indexOf(36, i);
            } while (iIndexOf >= 0);
            i2 = i3;
        }
        int length = str.length();
        if (length > i2) {
            sb.append(str.substring(i2, length));
        }
    }

    /* JADX WARN: Code duplicated, block: B:45:0x007d  */
    private static SubString interpretDollar(Context context, RegExpImpl regExpImpl, String str, int i, int[] iArr) {
        int length;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (str.charAt(i) != '$') {
            Kit.codeBug();
        }
        int languageVersion = context.getLanguageVersion();
        if ((languageVersion != 0 && languageVersion <= 140 && i > 0 && str.charAt(i - 1) == '\\') || (i2 = i + 1) >= (length = str.length())) {
            return null;
        }
        char cCharAt = str.charAt(i2);
        if (!NativeRegExp.isDigit(cCharAt)) {
            iArr[0] = 2;
            if (cCharAt == '$') {
                return new SubString("$");
            }
            if (cCharAt == '+') {
                return regExpImpl.lastParen;
            }
            if (cCharAt != '`') {
                if (cCharAt == '&') {
                    return regExpImpl.lastMatch;
                }
                if (cCharAt != '\'') {
                    return null;
                }
                return regExpImpl.rightContext;
            }
            if (languageVersion == 120) {
                SubString subString = regExpImpl.leftContext;
                subString.index = 0;
                subString.length = regExpImpl.lastMatch.index;
            }
            return regExpImpl.leftContext;
        }
        if (languageVersion != 0 && languageVersion <= 140) {
            if (cCharAt != '0') {
                i3 = i;
                i4 = 0;
                while (true) {
                    i3++;
                    if (i3 >= length) {
                        break;
                    }
                    char cCharAt2 = str.charAt(i3);
                    if (!NativeRegExp.isDigit(cCharAt2) || (i6 = (i4 * 10) + (cCharAt2 - '0')) < i4) {
                        break;
                    }
                    i4 = i6;
                }
            } else {
                return null;
            }
        } else {
            SubString[] subStringArr = regExpImpl.parens;
            int length2 = subStringArr == null ? 0 : subStringArr.length;
            int i7 = cCharAt - '0';
            if (i7 > length2) {
                return null;
            }
            int i8 = i + 2;
            if (i8 < length) {
                char cCharAt3 = str.charAt(i8);
                if (!NativeRegExp.isDigit(cCharAt3) || (i5 = (i7 * 10) + (cCharAt3 - '0')) > length2) {
                    i3 = i8;
                    i4 = i7;
                } else {
                    i3 = i + 3;
                    i4 = i5;
                }
            } else {
                i3 = i8;
                i4 = i7;
            }
            if (i4 == 0) {
                return null;
            }
        }
        iArr[0] = i3 - i;
        return regExpImpl.getParenSubString(i4 - 1);
    }

    private static Object matchOrReplace(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr, RegExpImpl regExpImpl, ki4 ki4Var, NativeRegExp nativeRegExp) {
        String str = ki4Var.c;
        boolean z = (nativeRegExp.getFlags() & 1) != 0;
        ki4Var.b = z;
        int[] iArr = {0};
        int i = ki4Var.a;
        if (i == 3) {
            Object objExecuteRegExp = nativeRegExp.executeRegExp(context, scriptable, regExpImpl, str, iArr, 0);
            if (objExecuteRegExp == null || !objExecuteRegExp.equals(Boolean.TRUE)) {
                return -1;
            }
            return Integer.valueOf(regExpImpl.leftContext.length);
        }
        if (!z) {
            return nativeRegExp.executeRegExp(context, scriptable, regExpImpl, str, iArr, i == 2 ? 0 : 1);
        }
        nativeRegExp.lastIndex = ScriptRuntime.zeroObj;
        Object obj = null;
        int i2 = 0;
        while (iArr[0] <= str.length()) {
            Object objExecuteRegExp2 = nativeRegExp.executeRegExp(context, scriptable, regExpImpl, str, iArr, 0);
            if (objExecuteRegExp2 != null && objExecuteRegExp2.equals(Boolean.TRUE)) {
                int i3 = ki4Var.a;
                if (i3 == 1) {
                    match_glob(ki4Var, context, scriptable, i2, regExpImpl);
                } else {
                    if (i3 != 2) {
                        Kit.codeBug();
                    }
                    SubString subString = regExpImpl.lastMatch;
                    int i4 = ki4Var.i;
                    int i5 = subString.index;
                    ki4Var.i = i5 + subString.length;
                    replace_glob(ki4Var, context, scriptable, regExpImpl, i4, i5 - i4);
                }
                if (regExpImpl.lastMatch.length == 0) {
                    if (iArr[0] != str.length()) {
                        iArr[0] = iArr[0] + 1;
                    }
                }
                i2++;
                obj = objExecuteRegExp2;
            }
            return objExecuteRegExp2;
        }
        return obj;
    }

    private static void match_glob(ki4 ki4Var, Context context, Scriptable scriptable, int i, RegExpImpl regExpImpl) {
        if (ki4Var.d == null) {
            ki4Var.d = context.newArray(scriptable, 0);
        }
        String string = regExpImpl.lastMatch.toString();
        Scriptable scriptable2 = ki4Var.d;
        scriptable2.put(i, scriptable2, string);
    }

    private static void replace_glob(ki4 ki4Var, Context context, Scriptable scriptable, RegExpImpl regExpImpl, int i, int i2) {
        int length;
        String string;
        int i3;
        if (ki4Var.e != null) {
            SubString[] subStringArr = regExpImpl.parens;
            int length2 = subStringArr == null ? 0 : subStringArr.length;
            Object[] objArr = new Object[length2 + 3];
            objArr[0] = regExpImpl.lastMatch.toString();
            for (int i4 = 0; i4 < length2; i4++) {
                SubString subString = subStringArr[i4];
                if (subString != null) {
                    objArr[i4 + 1] = subString.toString();
                } else {
                    objArr[i4 + 1] = Undefined.instance;
                }
            }
            objArr[length2 + 1] = Integer.valueOf(regExpImpl.leftContext.length);
            objArr[length2 + 2] = ki4Var.c;
            if (regExpImpl != ScriptRuntime.getRegExpProxy(context)) {
                Kit.codeBug();
            }
            RegExpImpl regExpImpl2 = new RegExpImpl();
            regExpImpl2.multiline = regExpImpl.multiline;
            regExpImpl2.input = regExpImpl.input;
            ScriptRuntime.setRegExpProxy(context, regExpImpl2);
            try {
                Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
                string = ScriptRuntime.toString(ki4Var.e.call(context, topLevelScope, topLevelScope, objArr));
                ScriptRuntime.setRegExpProxy(context, regExpImpl);
                length = string.length();
            } catch (Throwable th) {
                ScriptRuntime.setRegExpProxy(context, regExpImpl);
                throw th;
            }
        } else {
            length = ki4Var.f.length();
            int iIndexOf = ki4Var.g;
            if (iIndexOf >= 0) {
                int[] iArr = new int[1];
                do {
                    SubString subStringInterpretDollar = interpretDollar(context, regExpImpl, ki4Var.f, iIndexOf, iArr);
                    if (subStringInterpretDollar != null) {
                        int i5 = subStringInterpretDollar.length;
                        int i6 = iArr[0];
                        length += i5 - i6;
                        i3 = iIndexOf + i6;
                    } else {
                        i3 = iIndexOf + 1;
                    }
                    iIndexOf = ki4Var.f.indexOf(36, i3);
                } while (iIndexOf >= 0);
            }
            string = null;
        }
        int i7 = length + i2 + regExpImpl.rightContext.length;
        StringBuilder sb = ki4Var.h;
        if (sb == null) {
            sb = new StringBuilder(i7);
            ki4Var.h = sb;
        } else {
            sb.ensureCapacity(sb.length() + i7);
        }
        sb.append((CharSequence) regExpImpl.leftContext.str, i, i2 + i);
        if (ki4Var.e != null) {
            sb.append(string);
        } else {
            do_replace(ki4Var, context, regExpImpl);
        }
    }

    @Override
    public Object action(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr, int i) {
        String string;
        NativeRegExp nativeRegExpCreateRegExp;
        String string2;
        Function function;
        Object objMatchOrReplace;
        ki4 ki4Var = new ki4();
        ki4Var.a = i;
        ki4Var.c = ScriptRuntime.toString(scriptable2);
        if (i == 1) {
            Object objMatchOrReplace2 = matchOrReplace(context, scriptable, scriptable2, objArr, this, ki4Var, createRegExp(context, scriptable, objArr, context.getLanguageVersion() < 160 ? 1 : Integer.MAX_VALUE, false));
            Scriptable scriptable3 = ki4Var.d;
            return scriptable3 == null ? objMatchOrReplace2 : scriptable3;
        }
        if (i != 2) {
            if (i == 3) {
                return matchOrReplace(context, scriptable, scriptable2, objArr, this, ki4Var, createRegExp(context, scriptable, objArr, context.getLanguageVersion() < 160 ? 1 : Integer.MAX_VALUE, false));
            }
            throw Kit.codeBug();
        }
        boolean z = objArr.length > 0 && (objArr[0] instanceof NativeRegExp);
        if (context.getLanguageVersion() < 160) {
            z |= objArr.length > 2;
        }
        if (z) {
            nativeRegExpCreateRegExp = createRegExp(context, scriptable, objArr, 2, true);
            string = null;
        } else {
            string = ScriptRuntime.toString(objArr.length < 1 ? Undefined.instance : objArr[0]);
            nativeRegExpCreateRegExp = null;
        }
        Object obj = objArr.length < 2 ? Undefined.instance : objArr[1];
        if (!(obj instanceof Function) || (context.getLanguageVersion() >= 200 && (obj instanceof NativeRegExp))) {
            string2 = ScriptRuntime.toString(obj);
            function = null;
        } else {
            function = (Function) obj;
            string2 = null;
        }
        ki4Var.e = function;
        ki4Var.f = string2;
        ki4Var.g = string2 == null ? -1 : string2.indexOf(36);
        ki4Var.h = null;
        ki4Var.i = 0;
        if (z) {
            objMatchOrReplace = matchOrReplace(context, scriptable, scriptable2, objArr, this, ki4Var, nativeRegExpCreateRegExp);
        } else {
            String str = ki4Var.c;
            int iIndexOf = str.indexOf(string);
            if (iIndexOf >= 0) {
                int length = string.length();
                this.parens = null;
                this.lastParen = null;
                this.leftContext = new SubString(str, 0, iIndexOf);
                this.lastMatch = new SubString(str, iIndexOf, length);
                this.rightContext = new SubString(str, iIndexOf + length, (str.length() - iIndexOf) - length);
                objMatchOrReplace = Boolean.TRUE;
            } else {
                objMatchOrReplace = Boolean.FALSE;
            }
        }
        if (ki4Var.h == null) {
            if (ki4Var.b || objMatchOrReplace == null || !objMatchOrReplace.equals(Boolean.TRUE)) {
                return ki4Var.c;
            }
            SubString subString = this.leftContext;
            replace_glob(ki4Var, context, scriptable, this, subString.index, subString.length);
        }
        SubString subString2 = this.rightContext;
        StringBuilder sb = ki4Var.h;
        String str2 = subString2.str;
        int i2 = subString2.index;
        sb.append((CharSequence) str2, i2, subString2.length + i2);
        return ki4Var.h.toString();
    }

    @Override
    public Object compileRegExp(Context context, String str, String str2) {
        return NativeRegExp.compileRE(context, str, str2, false);
    }

    @Override
    public int find_split(Context context, Scriptable scriptable, String str, String str2, Scriptable scriptable2, int[] iArr, int[] iArr2, boolean[] zArr, String[][] strArr) {
        int i;
        int i2 = iArr[0];
        int length = str.length();
        int languageVersion = context.getLanguageVersion();
        NativeRegExp nativeRegExp = (NativeRegExp) scriptable2;
        while (true) {
            int i3 = iArr[0];
            iArr[0] = i2;
            if (!Boolean.TRUE.equals(nativeRegExp.executeRegExp(context, scriptable, this, str, iArr, 0))) {
                iArr[0] = i3;
                iArr2[0] = 1;
                zArr[0] = false;
                return length;
            }
            i = iArr[0];
            iArr[0] = i3;
            zArr[0] = true;
            int i4 = this.lastMatch.length;
            iArr2[0] = i4;
            if (i4 != 0 || i != iArr[0]) {
                i -= i4;
                break;
            }
            if (i == length) {
                if (languageVersion != 120) {
                    i = -1;
                    break;
                }
                iArr2[0] = 1;
                break;
            }
            i2 = i + 1;
        }
        SubString[] subStringArr = this.parens;
        int length2 = subStringArr == null ? 0 : subStringArr.length;
        strArr[0] = new String[length2];
        for (int i5 = 0; i5 < length2; i5++) {
            strArr[0][i5] = getParenSubString(i5).toString();
        }
        return i;
    }

    public SubString getParenSubString(int i) {
        SubString subString;
        SubString[] subStringArr = this.parens;
        return (subStringArr == null || i >= subStringArr.length || (subString = subStringArr[i]) == null) ? new SubString() : subString;
    }

    @Override
    public boolean isRegExp(Scriptable scriptable) {
        return scriptable instanceof NativeRegExp;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0067  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object js_split(Context context, Scriptable scriptable, String str, Object[] objArr) {
        long j;
        Object obj;
        RegExpProxy regExpProxy;
        Scriptable scriptable2;
        String str2;
        boolean z;
        Object objSubstring;
        Scriptable scriptableNewArray = context.newArray(scriptable, 0);
        Object[] objArr2 = objArr.length > 1 && objArr[1] != Undefined.instance;
        long length = 0;
        if (objArr2 == true) {
            long uint32 = ScriptRuntime.toUint32(objArr[1]);
            if (uint32 == 0) {
                return scriptableNewArray;
            }
            if (uint32 > str.length()) {
                length = str.length() + 1;
                j = length;
            } else {
                j = uint32;
            }
        } else {
            j = length;
        }
        if (objArr.length < 1 || (obj = objArr[0]) == Undefined.instance) {
            scriptableNewArray.put(0, scriptableNewArray, str);
            return scriptableNewArray;
        }
        int[] iArr = new int[1];
        if (obj instanceof Scriptable) {
            RegExpProxy regExpProxy2 = ScriptRuntime.getRegExpProxy(context);
            if (regExpProxy2 != null) {
                Scriptable scriptable3 = (Scriptable) objArr[0];
                if (regExpProxy2.isRegExp(scriptable3)) {
                    regExpProxy = regExpProxy2;
                    scriptable2 = scriptable3;
                } else {
                    regExpProxy = regExpProxy2;
                    scriptable2 = null;
                }
            } else {
                regExpProxy = regExpProxy2;
                scriptable2 = null;
            }
        } else {
            regExpProxy = null;
            scriptable2 = null;
        }
        if (scriptable2 == null) {
            String string = ScriptRuntime.toString(objArr[0]);
            iArr[0] = string.length();
            str2 = string;
        } else {
            str2 = null;
        }
        int[] iArr2 = {0};
        boolean[] zArr = {false};
        String[][] strArr = {null};
        int languageVersion = context.getLanguageVersion();
        int i = 0;
        while (true) {
            int i2 = i;
            int i3 = languageVersion;
            boolean[] zArr2 = zArr;
            int[] iArr3 = iArr2;
            int[] iArr4 = iArr;
            int iFind_split = find_split(context, scriptable, str, str2, languageVersion, regExpProxy, scriptable2, iArr2, iArr, zArr2, strArr);
            if (iFind_split < 0 || ((objArr2 == true && i2 >= j) || iFind_split > str.length())) {
                break;
            }
            if (str.length() == 0) {
                objSubstring = str;
                z = false;
            } else {
                z = false;
                objSubstring = str.substring(iArr3[0], iFind_split);
            }
            scriptableNewArray.put(i2, scriptableNewArray, objSubstring);
            i = i2 + 1;
            if (scriptable2 != null && zArr2[z ? 1 : 0]) {
                int length2 = strArr[z ? 1 : 0].length;
                for (int i4 = z ? 1 : 0; i4 < length2 && (objArr2 == false || i < j); i4++) {
                    scriptableNewArray.put(i, scriptableNewArray, strArr[z ? 1 : 0][i4]);
                    i++;
                }
                zArr2[z ? 1 : 0] = z;
            }
            int i5 = iFind_split + iArr4[z ? 1 : 0];
            iArr3[z ? 1 : 0] = i5;
            if (i3 < 130 && i3 != 0 && objArr2 != true && i5 == str.length()) {
                break;
            }
            languageVersion = i3;
            zArr = zArr2;
            iArr2 = iArr3;
            iArr = iArr4;
        }
        return scriptableNewArray;
    }

    @Override
    public Scriptable wrapRegExp(Context context, Scriptable scriptable, Object obj) {
        return new NativeRegExp(scriptable, (RECompiled) obj);
    }

    private static int find_split(Context context, Scriptable scriptable, String str, String str2, int i, RegExpProxy regExpProxy, Scriptable scriptable2, int[] iArr, int[] iArr2, boolean[] zArr, String[][] strArr) {
        int iIndexOf;
        int i2 = iArr[0];
        int length = str.length();
        if (i == 120 && scriptable2 == null && str2.length() == 1 && str2.charAt(0) == ' ') {
            if (i2 == 0) {
                while (i2 < length && Character.isWhitespace(str.charAt(i2))) {
                    i2++;
                }
                iArr[0] = i2;
            }
            if (i2 == length) {
                return -1;
            }
            while (i2 < length && !Character.isWhitespace(str.charAt(i2))) {
                i2++;
            }
            int i3 = i2;
            while (i3 < length && Character.isWhitespace(str.charAt(i3))) {
                i3++;
            }
            iArr2[0] = i3 - i2;
            return i2;
        }
        if (i2 > length) {
            return -1;
        }
        if (scriptable2 != null) {
            return regExpProxy.find_split(context, scriptable, str, str2, scriptable2, iArr, iArr2, zArr, strArr);
        }
        if (i != 0 && i < 130 && length == 0) {
            return -1;
        }
        if (str2.length() != 0) {
            int i4 = iArr[0];
            return (i4 < length && (iIndexOf = str.indexOf(str2, i4)) != -1) ? iIndexOf : length;
        }
        if (i != 120) {
            if (i2 == length) {
                return -1;
            }
            return i2 + 1;
        }
        if (i2 != length) {
            return i2 + 1;
        }
        iArr2[0] = 1;
        return i2;
    }
}
