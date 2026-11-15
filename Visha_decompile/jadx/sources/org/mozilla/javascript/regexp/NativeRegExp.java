package org.mozilla.javascript.regexp;

import defpackage.gb1;
import defpackage.xm8;
import defpackage.ym8;
import defpackage.zm8;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.CharUtils;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.IdScriptableObject;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.Symbol;
import org.mozilla.javascript.SymbolKey;
import org.mozilla.javascript.TopLevel;
import org.mozilla.javascript.Undefined;

public class NativeRegExp extends IdScriptableObject implements Function {
    static final boolean $assertionsDisabled = false;
    private static final int ANCHOR_BOL = -2;
    private static final int INDEX_LEN = 2;
    private static final int Id_compile = 1;
    private static final int Id_exec = 4;
    private static final int Id_global = 3;
    private static final int Id_ignoreCase = 4;
    private static final int Id_lastIndex = 1;
    private static final int Id_multiline = 5;
    private static final int Id_prefix = 6;
    private static final int Id_source = 2;
    private static final int Id_test = 5;
    private static final int Id_toSource = 3;
    private static final int Id_toString = 2;
    public static final int JSREG_FOLD = 2;
    public static final int JSREG_GLOB = 1;
    public static final int JSREG_MULTILINE = 4;
    public static final int MATCH = 1;
    private static final int MAX_INSTANCE_ID = 5;
    private static final int MAX_PROTOTYPE_ID = 8;
    public static final int PREFIX = 2;
    private static final Object REGEXP_TAG = new Object();
    private static final byte REOP_ALNUM = 9;
    private static final byte REOP_ALT = 31;
    private static final byte REOP_ALTPREREQ = 53;
    private static final byte REOP_ALTPREREQ2 = 55;
    private static final byte REOP_ALTPREREQi = 54;
    private static final byte REOP_ASSERT = 41;
    private static final byte REOP_ASSERTNOTTEST = 44;
    private static final byte REOP_ASSERTTEST = 43;
    private static final byte REOP_ASSERT_NOT = 42;
    private static final byte REOP_BACKREF = 13;
    private static final byte REOP_BOL = 2;
    private static final byte REOP_CLASS = 22;
    private static final byte REOP_DIGIT = 7;
    private static final byte REOP_DOT = 6;
    private static final byte REOP_EMPTY = 1;
    private static final byte REOP_END = 57;
    private static final byte REOP_ENDCHILD = 49;
    private static final byte REOP_EOL = 3;
    private static final byte REOP_FLAT = 14;
    private static final byte REOP_FLAT1 = 15;
    private static final byte REOP_FLAT1i = 17;
    private static final byte REOP_FLATi = 16;
    private static final byte REOP_JUMP = 32;
    private static final byte REOP_LPAREN = 29;
    private static final byte REOP_MINIMALOPT = 47;
    private static final byte REOP_MINIMALPLUS = 46;
    private static final byte REOP_MINIMALQUANT = 48;
    private static final byte REOP_MINIMALREPEAT = 52;
    private static final byte REOP_MINIMALSTAR = 45;
    private static final byte REOP_NCLASS = 23;
    private static final byte REOP_NONALNUM = 10;
    private static final byte REOP_NONDIGIT = 8;
    private static final byte REOP_NONSPACE = 12;
    private static final byte REOP_OPT = 28;
    private static final byte REOP_PLUS = 27;
    private static final byte REOP_QUANT = 25;
    private static final byte REOP_REPEAT = 51;
    private static final byte REOP_RPAREN = 30;
    private static final byte REOP_SIMPLE_END = 23;
    private static final byte REOP_SIMPLE_START = 1;
    private static final byte REOP_SPACE = 11;
    private static final byte REOP_STAR = 26;
    private static final byte REOP_UCFLAT1 = 18;
    private static final byte REOP_UCFLAT1i = 19;
    private static final byte REOP_WBDRY = 4;
    private static final byte REOP_WNONBDRY = 5;
    private static final int SymbolId_match = 7;
    private static final int SymbolId_search = 8;
    public static final int TEST = 0;
    private static final boolean debug = false;
    private static final long serialVersionUID = 4965263491464903264L;
    Object lastIndex;
    private int lastIndexAttr;
    private RECompiled re;

    public NativeRegExp(Scriptable scriptable, RECompiled rECompiled) {
        Double d = ScriptRuntime.zeroObj;
        this.lastIndex = d;
        this.lastIndexAttr = 6;
        this.re = rECompiled;
        setLastIndex(d);
        ScriptRuntime.setBuiltinProtoAndParent(this, scriptable, TopLevel.Builtins.RegExp);
    }

    private static void addCharacterRangeToCharSet(RECharSet rECharSet, char c, char c2) {
        int i = c / '\b';
        int i2 = c2 / '\b';
        if (c2 >= rECharSet.length || c > c2) {
            throw ScriptRuntime.constructError("SyntaxError", "invalid range in character class");
        }
        char c3 = (char) (c & 7);
        char c4 = (char) (c2 & 7);
        if (i == i2) {
            byte[] bArr = rECharSet.bits;
            bArr[i] = (byte) (((255 >> (7 - (c4 - c3))) << c3) | bArr[i]);
            return;
        }
        byte[] bArr2 = rECharSet.bits;
        bArr2[i] = (byte) ((255 << c3) | bArr2[i]);
        while (true) {
            i++;
            if (i >= i2) {
                byte[] bArr3 = rECharSet.bits;
                bArr3[i2] = (byte) (bArr3[i2] | (255 >> (7 - c4)));
                return;
            }
            rECharSet.bits[i] = -1;
        }
    }

    private static void addCharacterToCharSet(RECharSet rECharSet, char c) {
        int i = c / '\b';
        if (c >= rECharSet.length) {
            throw ScriptRuntime.constructError("SyntaxError", "invalid range in character class");
        }
        byte[] bArr = rECharSet.bits;
        bArr[i] = (byte) ((1 << (c & 7)) | bArr[i]);
    }

    private static int addIndex(byte[] bArr, int i, int i2) {
        if (i2 < 0) {
            throw Kit.codeBug();
        }
        if (i2 > 65535) {
            throw Context.reportRuntimeError("Too complex regexp");
        }
        bArr[i] = (byte) (i2 >> 8);
        bArr[i + 1] = (byte) i2;
        return i + 2;
    }

    private static boolean backrefMatcher(a aVar, int i, String str, int i2) {
        long[] jArr = aVar.e;
        if (jArr == null || i >= jArr.length) {
            return false;
        }
        int iA = aVar.a(i);
        if (iA == -1) {
            return true;
        }
        int iB = aVar.b(i);
        int i3 = aVar.d;
        if (i3 + iB > i2) {
            return false;
        }
        if ((aVar.b.flags & 2) != 0) {
            for (int i4 = 0; i4 < iB; i4++) {
                char cCharAt = str.charAt(iA + i4);
                char cCharAt2 = str.charAt(aVar.d + i4);
                if (cCharAt != cCharAt2 && upcase(cCharAt) != upcase(cCharAt2)) {
                    return false;
                }
            }
        } else if (!str.regionMatches(iA, str, i3, iB)) {
            return false;
        }
        aVar.d += iB;
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:31:0x0053
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:127)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:75)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:115)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:127)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:75)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:115)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:127)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:75)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:115)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:162)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    private static boolean calculateBitmapSize(defpackage.gb1 r11, defpackage.ym8 r12, char[] r13, int r14, int r15) {
        /*
            Method dump skipped, instruction units count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.NativeRegExp.calculateBitmapSize(gb1, ym8, char[], int, int):boolean");
    }

    private static boolean classMatcher(a aVar, RECharSet rECharSet, char c) {
        if (!rECharSet.converted) {
            processCharSet(aVar, rECharSet);
        }
        int i = c >> 3;
        int i2 = rECharSet.length;
        boolean z = true;
        if (i2 != 0 && c < i2 && (rECharSet.bits[i] & (1 << (c & 7))) != 0) {
            z = false;
        }
        return rECharSet.sense ^ z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static RECompiled compileRE(Context context, String str, String str2, boolean z) {
        int i;
        int i2;
        RECompiled rECompiled = new RECompiled(str);
        int length = str.length();
        if (str2 != null) {
            i = 0;
            for (int i3 = 0; i3 < str2.length(); i3++) {
                char cCharAt = str2.charAt(i3);
                if (cCharAt == 'g') {
                    i2 = 1;
                } else if (cCharAt == 'i') {
                    i2 = 2;
                } else if (cCharAt == 'm') {
                    i2 = 4;
                } else {
                    reportError("msg.invalid.re.flag", String.valueOf(cCharAt));
                    i2 = 0;
                }
                if ((i & i2) != 0) {
                    reportError("msg.invalid.re.flag", String.valueOf(cCharAt));
                }
                i |= i2;
            }
        } else {
            i = 0;
        }
        rECompiled.flags = i;
        gb1 gb1Var = new gb1(context, rECompiled.source, length, i);
        if (z && length > 0) {
            ym8 ym8Var = new ym8(REOP_FLAT);
            gb1Var.l = ym8Var;
            ym8Var.o = gb1Var.b[0];
            ym8Var.p = length;
            ym8Var.q = 0;
            gb1Var.k += 5;
        } else {
            if (!parseDisjunction(gb1Var)) {
                return null;
            }
            if (gb1Var.g > gb1Var.h) {
                gb1Var = new gb1(context, rECompiled.source, length, i);
                gb1Var.f = gb1Var.h;
                if (!parseDisjunction(gb1Var)) {
                    return null;
                }
            }
        }
        rECompiled.program = new byte[gb1Var.k + 1];
        int i4 = gb1Var.j;
        if (i4 != 0) {
            rECompiled.classList = new RECharSet[i4];
            rECompiled.classCount = i4;
        }
        int iEmitREBytecode = emitREBytecode(gb1Var, rECompiled, 0, gb1Var.l);
        byte[] bArr = rECompiled.program;
        bArr[iEmitREBytecode] = REOP_END;
        rECompiled.parenCount = gb1Var.h;
        byte b = bArr[0];
        if (b == 2) {
            rECompiled.anchorCh = -2;
        } else if (b != 31) {
            switch (b) {
                case 14:
                case 16:
                    rECompiled.anchorCh = rECompiled.source[getIndex(bArr, 1)];
                    break;
                case 15:
                case 17:
                    rECompiled.anchorCh = (char) (bArr[1] & 255);
                    break;
                case 18:
                case 19:
                    rECompiled.anchorCh = (char) getIndex(bArr, 1);
                    break;
            }
        } else {
            ym8 ym8Var2 = gb1Var.l;
            if (ym8Var2.c.a == 2 && ym8Var2.d.a == 2) {
                rECompiled.anchorCh = -2;
            }
        }
        return rECompiled;
    }

    private static void doFlat(gb1 gb1Var, char c) {
        ym8 ym8Var = new ym8(REOP_FLAT);
        gb1Var.l = ym8Var;
        ym8Var.o = c;
        ym8Var.p = 1;
        ym8Var.q = -1;
        gb1Var.k += 3;
    }

    private static char downcase(char c) {
        if (c < 128) {
            return ('A' > c || c > 'Z') ? c : (char) (c + ' ');
        }
        char lowerCase = Character.toLowerCase(c);
        return lowerCase < 128 ? c : lowerCase;
    }

    /* JADX WARN: Switch 'out' block B:69:0x00f6 for B:22:0x002e already processed. Defaulting to fallback option. */
    private static int emitREBytecode(gb1 gb1Var, RECompiled rECompiled, int i, ym8 ym8Var) {
        int i2;
        byte[] bArr = rECompiled.program;
        while (ym8Var != null) {
            int iAddIndex = i + 1;
            byte b = ym8Var.a;
            bArr[i] = b;
            if (b != 1) {
                if (b != 22) {
                    if (b == 25) {
                        int i3 = ym8Var.f;
                        if (i3 == 0 && ym8Var.g == -1) {
                            bArr[i] = ym8Var.i ? REOP_STAR : REOP_MINIMALSTAR;
                        } else if (i3 == 0 && ym8Var.g == 1) {
                            bArr[i] = ym8Var.i ? REOP_OPT : REOP_MINIMALOPT;
                        } else if (i3 == 1 && ym8Var.g == -1) {
                            bArr[i] = ym8Var.i ? REOP_PLUS : REOP_MINIMALPLUS;
                        } else {
                            if (!ym8Var.i) {
                                bArr[i] = REOP_MINIMALQUANT;
                            }
                            iAddIndex = addIndex(bArr, addIndex(bArr, iAddIndex, i3), ym8Var.g + 1);
                        }
                        int iAddIndex2 = addIndex(bArr, addIndex(bArr, iAddIndex, ym8Var.h), ym8Var.e);
                        int iEmitREBytecode = emitREBytecode(gb1Var, rECompiled, iAddIndex2 + 2, ym8Var.c);
                        i2 = iEmitREBytecode + 1;
                        bArr[iEmitREBytecode] = REOP_ENDCHILD;
                        resolveForwardJump(bArr, iAddIndex2, i2);
                    } else if (b == 29) {
                        int iEmitREBytecode2 = emitREBytecode(gb1Var, rECompiled, addIndex(bArr, iAddIndex, ym8Var.e), ym8Var.c);
                        bArr[iEmitREBytecode2] = REOP_RPAREN;
                        i = addIndex(bArr, iEmitREBytecode2 + 1, ym8Var.e);
                    } else if (b == 31) {
                        ym8 ym8Var2 = ym8Var.d;
                        int iEmitREBytecode3 = emitREBytecode(gb1Var, rECompiled, iAddIndex + 2, ym8Var.c);
                        int i4 = iEmitREBytecode3 + 1;
                        bArr[iEmitREBytecode3] = REOP_JUMP;
                        int i5 = iEmitREBytecode3 + 3;
                        resolveForwardJump(bArr, iAddIndex, i5);
                        int iEmitREBytecode4 = emitREBytecode(gb1Var, rECompiled, i5, ym8Var2);
                        int i6 = iEmitREBytecode4 + 1;
                        bArr[iEmitREBytecode4] = REOP_JUMP;
                        i = iEmitREBytecode4 + 3;
                        resolveForwardJump(bArr, i4, i);
                        resolveForwardJump(bArr, i6, i);
                    } else if (b == 13) {
                        i = addIndex(bArr, iAddIndex, ym8Var.e);
                    } else if (b == 14) {
                        if (ym8Var.q != -1) {
                            while (true) {
                                ym8 ym8Var3 = ym8Var.b;
                                if (ym8Var3 != null && ym8Var3.a == 14) {
                                    int i7 = ym8Var.q;
                                    int i8 = ym8Var.p;
                                    if (i7 + i8 == ym8Var3.q) {
                                        ym8Var.p = i8 + ym8Var3.p;
                                        ym8Var.b = ym8Var3.b;
                                    }
                                }
                            }
                        }
                        int i9 = ym8Var.q;
                        if (i9 == -1 || ym8Var.p <= 1) {
                            char c = ym8Var.o;
                            if (c < 256) {
                                if ((gb1Var.e & 2) != 0) {
                                    bArr[i] = REOP_FLAT1i;
                                } else {
                                    bArr[i] = REOP_FLAT1;
                                }
                                i += 2;
                                bArr[iAddIndex] = (byte) c;
                            } else {
                                if ((gb1Var.e & 2) != 0) {
                                    bArr[i] = REOP_UCFLAT1i;
                                } else {
                                    bArr[i] = REOP_UCFLAT1;
                                }
                                i = addIndex(bArr, iAddIndex, c);
                            }
                        } else {
                            if ((gb1Var.e & 2) != 0) {
                                bArr[i] = REOP_FLATi;
                            } else {
                                bArr[i] = REOP_FLAT;
                            }
                            i = addIndex(bArr, addIndex(bArr, iAddIndex, i9), ym8Var.p);
                        }
                    } else if (b == 41) {
                        int iEmitREBytecode5 = emitREBytecode(gb1Var, rECompiled, i + 3, ym8Var.c);
                        i2 = iEmitREBytecode5 + 1;
                        bArr[iEmitREBytecode5] = REOP_ASSERTTEST;
                        resolveForwardJump(bArr, iAddIndex, i2);
                    } else if (b != 42) {
                        switch (b) {
                            case 53:
                            case 54:
                            case 55:
                                boolean z = b == 54;
                                char cUpcase = ym8Var.o;
                                if (z) {
                                    cUpcase = upcase(cUpcase);
                                }
                                addIndex(bArr, iAddIndex, cUpcase);
                                int i10 = i + 3;
                                int iUpcase = ym8Var.m;
                                if (z) {
                                    iUpcase = upcase((char) iUpcase);
                                }
                                addIndex(bArr, i10, iUpcase);
                                iAddIndex = i + 5;
                                ym8 ym8Var4 = ym8Var.d;
                                int iEmitREBytecode6 = emitREBytecode(gb1Var, rECompiled, iAddIndex + 2, ym8Var.c);
                                int i11 = iEmitREBytecode6 + 1;
                                bArr[iEmitREBytecode6] = REOP_JUMP;
                                int i12 = iEmitREBytecode6 + 3;
                                resolveForwardJump(bArr, iAddIndex, i12);
                                int iEmitREBytecode7 = emitREBytecode(gb1Var, rECompiled, i12, ym8Var4);
                                int i13 = iEmitREBytecode7 + 1;
                                bArr[iEmitREBytecode7] = REOP_JUMP;
                                i = iEmitREBytecode7 + 3;
                                resolveForwardJump(bArr, i11, i);
                                resolveForwardJump(bArr, i13, i);
                                break;
                            default:
                                i = iAddIndex;
                                continue;
                        }
                    } else {
                        int iEmitREBytecode8 = emitREBytecode(gb1Var, rECompiled, i + 3, ym8Var.c);
                        i2 = iEmitREBytecode8 + 1;
                        bArr[iEmitREBytecode8] = REOP_ASSERTNOTTEST;
                        resolveForwardJump(bArr, iAddIndex, i2);
                    }
                    i = i2;
                } else {
                    if (!ym8Var.n) {
                        bArr[i] = 23;
                    }
                    i = addIndex(bArr, iAddIndex, ym8Var.m);
                    rECompiled.classList[ym8Var.m] = new RECharSet(ym8Var.l, ym8Var.j, ym8Var.k, ym8Var.n);
                }
            }
            ym8Var = ym8Var.b;
        }
        return i;
    }

    private static String escapeRegExp(Object obj) {
        String string = ScriptRuntime.toString(obj);
        StringBuilder sb = null;
        int i = 0;
        for (int iIndexOf = string.indexOf(47); iIndexOf > -1; iIndexOf = string.indexOf(47, iIndexOf + 1)) {
            if (iIndexOf == i || string.charAt(iIndexOf - 1) != '\\') {
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append((CharSequence) string, i, iIndexOf);
                sb.append("\\/");
                i = iIndexOf + 1;
            }
        }
        if (sb == null) {
            return string;
        }
        sb.append((CharSequence) string, i, string.length());
        return sb.toString();
    }

    private Object execSub(Context context, Scriptable scriptable, Object[] objArr, int i) {
        String string;
        RegExpImpl impl = getImpl(context);
        if (objArr.length == 0) {
            string = impl.input;
            if (string == null) {
                string = ScriptRuntime.toString(Undefined.instance);
            }
        } else {
            string = ScriptRuntime.toString(objArr[0]);
        }
        String str = string;
        double integer = (this.re.flags & 1) != 0 ? ScriptRuntime.toInteger(this.lastIndex) : 0.0d;
        if (integer < 0.0d || str.length() < integer) {
            setLastIndex(ScriptRuntime.zeroObj);
            return null;
        }
        int[] iArr = {(int) integer};
        Object objExecuteRegExp = executeRegExp(context, scriptable, impl, str, iArr, i);
        if ((this.re.flags & 1) == 0) {
            return objExecuteRegExp;
        }
        if (objExecuteRegExp == null || objExecuteRegExp == Undefined.instance) {
            setLastIndex(ScriptRuntime.zeroObj);
            return objExecuteRegExp;
        }
        setLastIndex(Double.valueOf(iArr[0]));
        return objExecuteRegExp;
    }

    /* JADX WARN: Code duplicated, block: B:134:0x0299 A[PHI: r14
      0x0299: PHI (r14v43 int) = (r14v42 int), (r14v44 int) binds: [B:141:0x02d1, B:133:0x0297] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:153:0x0319 A[PHI: r14
      0x0319: PHI (r14v14 int) = (r14v2 int), (r14v26 int), (r14v26 int), (r14v26 int), (r14v26 int) binds: [B:202:0x0319, B:45:0x00b7, B:46:0x00b9, B:38:0x00a0, B:40:0x00ac] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:155:0x032d  */
    /* JADX WARN: Code duplicated, block: B:157:0x033b  */
    /* JADX WARN: Code duplicated, block: B:158:0x0341  */
    /* JADX WARN: Code duplicated, block: B:159:0x034a  */
    /* JADX WARN: Code duplicated, block: B:164:0x0386  */
    /* JADX WARN: Code duplicated, block: B:167:0x038e  */
    /* JADX WARN: Code duplicated, block: B:168:0x0390  */
    /* JADX WARN: Code duplicated, block: B:169:0x0392  */
    /* JADX WARN: Code duplicated, block: B:170:0x0394  */
    /* JADX WARN: Code duplicated, block: B:171:0x0396  */
    /* JADX WARN: Code duplicated, block: B:174:0x039c  */
    /* JADX WARN: Code duplicated, block: B:176:0x03a1  */
    /* JADX WARN: Code duplicated, block: B:178:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:182:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:183:0x03d7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:184:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:185:0x03e5  */
    /* JADX WARN: Code duplicated, block: B:198:0x0389 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    private static boolean executeREBytecode(a aVar, String str, int i) {
        int i2;
        int offset;
        int i3;
        int i4;
        int i5;
        int iSimpleMatch;
        int i6;
        int i7;
        int offset2;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        byte b;
        boolean z;
        RECompiled rECompiled = aVar.b;
        byte[] bArr = rECompiled.program;
        int i20 = 0;
        int i21 = bArr[0];
        int i22 = 1;
        char c = '9';
        int offset3 = 1;
        if (rECompiled.anchorCh < 0 && reopIsSimple(i21)) {
            while (true) {
                if (aVar.d > i) {
                    z = false;
                    break;
                }
                int iSimpleMatch2 = simpleMatch(aVar, str, i21, bArr, 1, i, true);
                if (iSimpleMatch2 >= 0) {
                    offset3 = iSimpleMatch2 + 1;
                    i21 = bArr[iSimpleMatch2];
                    z = true;
                    break;
                }
                aVar.c++;
                aVar.d++;
            }
            if (!z) {
                return false;
            }
        }
        int i23 = 0;
        int i24 = i21;
        int i25 = 57;
        offset3 = 0;
        while (true) {
            if (!reopIsSimple(i24)) {
                if (i24 == c) {
                    return i22;
                }
                switch (i24) {
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                        switch (i24) {
                            case 25:
                                i6 = 1;
                                int offset4 = getOffset(bArr, offset3);
                                offset2 = getOffset(bArr, offset3 + 2) - 1;
                                i10 = offset4;
                                i8 = offset3 + 4;
                                i9 = i6;
                                i11 = i8;
                                pushProgState(aVar, i10, offset2, aVar.d, null, i25, offset3);
                                if (i9 != 0) {
                                    pushBackTrackState(aVar, REOP_REPEAT, i11);
                                    i24 = bArr[i11 + 6];
                                    i25 = 51;
                                    offset3 = i11 + 7;
                                    offset3 = i11;
                                } else if (i10 != 0) {
                                    offset3 = i11 + 7;
                                    i24 = bArr[i11 + 6];
                                    offset3 = i11;
                                    i25 = 52;
                                } else {
                                    pushBackTrackState(aVar, REOP_MINIMALREPEAT, i11);
                                    popProgState(aVar);
                                    int i26 = i11 + 4;
                                    int offset5 = i26 + getOffset(bArr, i26);
                                    offset3 = offset5 + 1;
                                    i24 = bArr[offset5];
                                }
                                i20 = 0;
                                i22 = 1;
                                c = '9';
                                break;
                            case 26:
                                i7 = 1;
                                offset2 = -1;
                                i8 = offset3;
                                i9 = i7;
                                i10 = i20;
                                i11 = i8;
                                pushProgState(aVar, i10, offset2, aVar.d, null, i25, offset3);
                                if (i9 != 0) {
                                    pushBackTrackState(aVar, REOP_REPEAT, i11);
                                    i24 = bArr[i11 + 6];
                                    i25 = 51;
                                    offset3 = i11 + 7;
                                    offset3 = i11;
                                } else if (i10 != 0) {
                                    offset3 = i11 + 7;
                                    i24 = bArr[i11 + 6];
                                    offset3 = i11;
                                    i25 = 52;
                                } else {
                                    pushBackTrackState(aVar, REOP_MINIMALREPEAT, i11);
                                    popProgState(aVar);
                                    int i27 = i11 + 4;
                                    int offset6 = i27 + getOffset(bArr, i27);
                                    offset3 = offset6 + 1;
                                    i24 = bArr[offset6];
                                }
                                i20 = 0;
                                i22 = 1;
                                c = '9';
                                break;
                            case 27:
                                i6 = 1;
                                offset2 = -1;
                                i8 = offset3;
                                i10 = 1;
                                i9 = i6;
                                i11 = i8;
                                pushProgState(aVar, i10, offset2, aVar.d, null, i25, offset3);
                                if (i9 != 0) {
                                    pushBackTrackState(aVar, REOP_REPEAT, i11);
                                    i24 = bArr[i11 + 6];
                                    i25 = 51;
                                    offset3 = i11 + 7;
                                    offset3 = i11;
                                } else if (i10 != 0) {
                                    offset3 = i11 + 7;
                                    i24 = bArr[i11 + 6];
                                    offset3 = i11;
                                    i25 = 52;
                                } else {
                                    pushBackTrackState(aVar, REOP_MINIMALREPEAT, i11);
                                    popProgState(aVar);
                                    int i28 = i11 + 4;
                                    int offset7 = i28 + getOffset(bArr, i28);
                                    offset3 = offset7 + 1;
                                    i24 = bArr[offset7];
                                }
                                i20 = 0;
                                i22 = 1;
                                c = '9';
                                break;
                            case 28:
                                i6 = 1;
                                i10 = i20;
                                i8 = offset3;
                                offset2 = 1;
                                i9 = i6;
                                i11 = i8;
                                pushProgState(aVar, i10, offset2, aVar.d, null, i25, offset3);
                                if (i9 != 0) {
                                    pushBackTrackState(aVar, REOP_REPEAT, i11);
                                    i24 = bArr[i11 + 6];
                                    i25 = 51;
                                    offset3 = i11 + 7;
                                    offset3 = i11;
                                } else if (i10 != 0) {
                                    offset3 = i11 + 7;
                                    i24 = bArr[i11 + 6];
                                    offset3 = i11;
                                    i25 = 52;
                                } else {
                                    pushBackTrackState(aVar, REOP_MINIMALREPEAT, i11);
                                    popProgState(aVar);
                                    int i29 = i11 + 4;
                                    int offset8 = i29 + getOffset(bArr, i29);
                                    offset3 = offset8 + 1;
                                    i24 = bArr[offset8];
                                }
                                i20 = 0;
                                i22 = 1;
                                c = '9';
                                break;
                            default:
                                switch (i24) {
                                    case 45:
                                        i7 = i20;
                                        offset2 = -1;
                                        i8 = offset3;
                                        i9 = i7;
                                        i10 = i20;
                                        i11 = i8;
                                        pushProgState(aVar, i10, offset2, aVar.d, null, i25, offset3);
                                        if (i9 != 0) {
                                            pushBackTrackState(aVar, REOP_REPEAT, i11);
                                            i24 = bArr[i11 + 6];
                                            i25 = 51;
                                            offset3 = i11 + 7;
                                            offset3 = i11;
                                        } else if (i10 != 0) {
                                            offset3 = i11 + 7;
                                            i24 = bArr[i11 + 6];
                                            offset3 = i11;
                                            i25 = 52;
                                        } else {
                                            pushBackTrackState(aVar, REOP_MINIMALREPEAT, i11);
                                            popProgState(aVar);
                                            int i210 = i11 + 4;
                                            int offset9 = i210 + getOffset(bArr, i210);
                                            offset3 = offset9 + 1;
                                            i24 = bArr[offset9];
                                        }
                                        i20 = 0;
                                        i22 = 1;
                                        c = '9';
                                        break;
                                    case 46:
                                        i6 = i20;
                                        offset2 = -1;
                                        i8 = offset3;
                                        i10 = 1;
                                        i9 = i6;
                                        i11 = i8;
                                        pushProgState(aVar, i10, offset2, aVar.d, null, i25, offset3);
                                        if (i9 != 0) {
                                            pushBackTrackState(aVar, REOP_REPEAT, i11);
                                            i24 = bArr[i11 + 6];
                                            i25 = 51;
                                            offset3 = i11 + 7;
                                            offset3 = i11;
                                        } else if (i10 != 0) {
                                            offset3 = i11 + 7;
                                            i24 = bArr[i11 + 6];
                                            offset3 = i11;
                                            i25 = 52;
                                        } else {
                                            pushBackTrackState(aVar, REOP_MINIMALREPEAT, i11);
                                            popProgState(aVar);
                                            int i211 = i11 + 4;
                                            int offset10 = i211 + getOffset(bArr, i211);
                                            offset3 = offset10 + 1;
                                            i24 = bArr[offset10];
                                        }
                                        i20 = 0;
                                        i22 = 1;
                                        c = '9';
                                        break;
                                    case 47:
                                        i6 = i20;
                                        i10 = i20;
                                        i8 = offset3;
                                        offset2 = 1;
                                        i9 = i6;
                                        i11 = i8;
                                        pushProgState(aVar, i10, offset2, aVar.d, null, i25, offset3);
                                        if (i9 != 0) {
                                            pushBackTrackState(aVar, REOP_REPEAT, i11);
                                            i24 = bArr[i11 + 6];
                                            i25 = 51;
                                            offset3 = i11 + 7;
                                            offset3 = i11;
                                        } else if (i10 != 0) {
                                            offset3 = i11 + 7;
                                            i24 = bArr[i11 + 6];
                                            offset3 = i11;
                                            i25 = 52;
                                        } else {
                                            pushBackTrackState(aVar, REOP_MINIMALREPEAT, i11);
                                            popProgState(aVar);
                                            int i212 = i11 + 4;
                                            int offset11 = i212 + getOffset(bArr, i212);
                                            offset3 = offset11 + 1;
                                            i24 = bArr[offset11];
                                        }
                                        i20 = 0;
                                        i22 = 1;
                                        c = '9';
                                        break;
                                    case 48:
                                        i6 = i20;
                                        int offset12 = getOffset(bArr, offset3);
                                        offset2 = getOffset(bArr, offset3 + 2) - 1;
                                        i10 = offset12;
                                        i8 = offset3 + 4;
                                        i9 = i6;
                                        i11 = i8;
                                        pushProgState(aVar, i10, offset2, aVar.d, null, i25, offset3);
                                        if (i9 != 0) {
                                            pushBackTrackState(aVar, REOP_REPEAT, i11);
                                            i24 = bArr[i11 + 6];
                                            i25 = 51;
                                            offset3 = i11 + 7;
                                            offset3 = i11;
                                        } else if (i10 != 0) {
                                            offset3 = i11 + 7;
                                            i24 = bArr[i11 + 6];
                                            offset3 = i11;
                                            i25 = 52;
                                        } else {
                                            pushBackTrackState(aVar, REOP_MINIMALREPEAT, i11);
                                            popProgState(aVar);
                                            int i213 = i11 + 4;
                                            int offset13 = i213 + getOffset(bArr, i213);
                                            offset3 = offset13 + 1;
                                            i24 = bArr[offset13];
                                        }
                                        i20 = 0;
                                        i22 = 1;
                                        c = '9';
                                        break;
                                    default:
                                        throw Kit.codeBug();
                                }
                                break;
                        }
                        break;
                    case 29:
                        int i30 = offset3 + 2;
                        i20 = 0;
                        aVar.c(getIndex(bArr, offset3), aVar.d, 0);
                        offset3 += 3;
                        i24 = bArr[i30];
                        i22 = 1;
                        c = '9';
                        break;
                    case 30:
                        int index = getIndex(bArr, offset3);
                        int i31 = offset3 + 2;
                        int iA = aVar.a(index);
                        aVar.c(index, iA, aVar.d - iA);
                        offset3 += 3;
                        i24 = bArr[i31];
                        i20 = 0;
                        i22 = 1;
                        c = '9';
                        break;
                    case 31:
                        offset = offset3 + getOffset(bArr, offset3);
                        i3 = offset3 + 3;
                        i4 = bArr[offset3 + 2];
                        int i32 = aVar.d;
                        if (reopIsSimple(i4)) {
                            iSimpleMatch = simpleMatch(aVar, str, i4, bArr, i3, i, true);
                            if (iSimpleMatch < 0) {
                                offset3 = offset + 1;
                                i24 = bArr[offset];
                            } else {
                                i5 = bArr[iSimpleMatch];
                                offset3 = iSimpleMatch + 1;
                                i23 = 1;
                            }
                            i20 = 0;
                            i22 = 1;
                            c = '9';
                        } else {
                            i5 = i4;
                            offset3 = i3;
                        }
                        pushBackTrackState(aVar, bArr[offset], offset + 1, i32, i25, offset3);
                        i24 = i5;
                        i20 = 0;
                        i22 = 1;
                        c = '9';
                        break;
                    case 32:
                        int offset14 = offset3 + getOffset(bArr, offset3);
                        i2 = offset14 + 1;
                        i24 = bArr[offset14];
                        offset3 = i2;
                        i20 = 0;
                        i22 = 1;
                        c = '9';
                        break;
                    default:
                        switch (i24) {
                            case 41:
                                int index2 = offset3 + getIndex(bArr, offset3);
                                int i33 = offset3 + 2;
                                offset3 += 3;
                                int i34 = bArr[i33];
                                if (reopIsSimple(i34) && simpleMatch(aVar, str, i34, bArr, offset3, i, false) < 0) {
                                    i23 = 0;
                                } else {
                                    pushProgState(aVar, 0, 0, aVar.d, aVar.g, i25, offset3);
                                    pushBackTrackState(aVar, REOP_ASSERTTEST, index2);
                                    i24 = i34;
                                }
                                i20 = 0;
                                i22 = 1;
                                c = '9';
                                break;
                            case 42:
                                int index3 = offset3 + getIndex(bArr, offset3);
                                int i35 = offset3 + 2;
                                offset3 += 3;
                                int i36 = bArr[i35];
                                if (reopIsSimple(i36)) {
                                    b = 44;
                                    int iSimpleMatch3 = simpleMatch(aVar, str, i36, bArr, offset3, i, false);
                                    if (iSimpleMatch3 >= 0 && bArr[iSimpleMatch3] == ',') {
                                        i23 = 0;
                                        break;
                                    }
                                    i20 = 0;
                                    i22 = 1;
                                    c = '9';
                                } else {
                                    b = 44;
                                }
                                pushProgState(aVar, 0, 0, aVar.d, aVar.g, i25, offset3);
                                pushBackTrackState(aVar, b, index3);
                                i24 = i36;
                                i20 = 0;
                                i22 = 1;
                                c = '9';
                                break;
                            case 43:
                            case 44:
                                zm8 zm8VarPopProgState = popProgState(aVar);
                                aVar.d = zm8VarPopProgState.d;
                                aVar.g = zm8VarPopProgState.g;
                                offset3 = zm8VarPopProgState.f;
                                int i37 = zm8VarPopProgState.e;
                                if (i24 == 44) {
                                    i23 ^= 1;
                                }
                                i25 = i37;
                                break;
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                                switch (i24) {
                                    case 25:
                                        i6 = 1;
                                        int offset15 = getOffset(bArr, offset3);
                                        offset2 = getOffset(bArr, offset3 + 2) - 1;
                                        i10 = offset15;
                                        i8 = offset3 + 4;
                                        i9 = i6;
                                        i11 = i8;
                                        pushProgState(aVar, i10, offset2, aVar.d, null, i25, offset3);
                                        if (i9 != 0) {
                                            pushBackTrackState(aVar, REOP_REPEAT, i11);
                                            i24 = bArr[i11 + 6];
                                            i25 = 51;
                                            offset3 = i11 + 7;
                                            offset3 = i11;
                                        } else if (i10 != 0) {
                                            offset3 = i11 + 7;
                                            i24 = bArr[i11 + 6];
                                            offset3 = i11;
                                            i25 = 52;
                                        } else {
                                            pushBackTrackState(aVar, REOP_MINIMALREPEAT, i11);
                                            popProgState(aVar);
                                            int i214 = i11 + 4;
                                            int offset16 = i214 + getOffset(bArr, i214);
                                            offset3 = offset16 + 1;
                                            i24 = bArr[offset16];
                                        }
                                        i20 = 0;
                                        i22 = 1;
                                        c = '9';
                                        break;
                                    case 26:
                                        i7 = 1;
                                        offset2 = -1;
                                        i8 = offset3;
                                        i9 = i7;
                                        i10 = i20;
                                        i11 = i8;
                                        pushProgState(aVar, i10, offset2, aVar.d, null, i25, offset3);
                                        if (i9 != 0) {
                                            pushBackTrackState(aVar, REOP_REPEAT, i11);
                                            i24 = bArr[i11 + 6];
                                            i25 = 51;
                                            offset3 = i11 + 7;
                                            offset3 = i11;
                                        } else if (i10 != 0) {
                                            offset3 = i11 + 7;
                                            i24 = bArr[i11 + 6];
                                            offset3 = i11;
                                            i25 = 52;
                                        } else {
                                            pushBackTrackState(aVar, REOP_MINIMALREPEAT, i11);
                                            popProgState(aVar);
                                            int i215 = i11 + 4;
                                            int offset17 = i215 + getOffset(bArr, i215);
                                            offset3 = offset17 + 1;
                                            i24 = bArr[offset17];
                                        }
                                        i20 = 0;
                                        i22 = 1;
                                        c = '9';
                                        break;
                                    case 27:
                                        i6 = 1;
                                        offset2 = -1;
                                        i8 = offset3;
                                        i10 = 1;
                                        i9 = i6;
                                        i11 = i8;
                                        pushProgState(aVar, i10, offset2, aVar.d, null, i25, offset3);
                                        if (i9 != 0) {
                                            pushBackTrackState(aVar, REOP_REPEAT, i11);
                                            i24 = bArr[i11 + 6];
                                            i25 = 51;
                                            offset3 = i11 + 7;
                                            offset3 = i11;
                                        } else if (i10 != 0) {
                                            offset3 = i11 + 7;
                                            i24 = bArr[i11 + 6];
                                            offset3 = i11;
                                            i25 = 52;
                                        } else {
                                            pushBackTrackState(aVar, REOP_MINIMALREPEAT, i11);
                                            popProgState(aVar);
                                            int i216 = i11 + 4;
                                            int offset18 = i216 + getOffset(bArr, i216);
                                            offset3 = offset18 + 1;
                                            i24 = bArr[offset18];
                                        }
                                        i20 = 0;
                                        i22 = 1;
                                        c = '9';
                                        break;
                                    case 28:
                                        i6 = 1;
                                        i10 = i20;
                                        i8 = offset3;
                                        offset2 = 1;
                                        i9 = i6;
                                        i11 = i8;
                                        pushProgState(aVar, i10, offset2, aVar.d, null, i25, offset3);
                                        if (i9 != 0) {
                                            pushBackTrackState(aVar, REOP_REPEAT, i11);
                                            i24 = bArr[i11 + 6];
                                            i25 = 51;
                                            offset3 = i11 + 7;
                                            offset3 = i11;
                                        } else if (i10 != 0) {
                                            offset3 = i11 + 7;
                                            i24 = bArr[i11 + 6];
                                            offset3 = i11;
                                            i25 = 52;
                                        } else {
                                            pushBackTrackState(aVar, REOP_MINIMALREPEAT, i11);
                                            popProgState(aVar);
                                            int i217 = i11 + 4;
                                            int offset19 = i217 + getOffset(bArr, i217);
                                            offset3 = offset19 + 1;
                                            i24 = bArr[offset19];
                                        }
                                        i20 = 0;
                                        i22 = 1;
                                        c = '9';
                                        break;
                                    default:
                                        switch (i24) {
                                            case 45:
                                                i7 = i20;
                                                offset2 = -1;
                                                i8 = offset3;
                                                i9 = i7;
                                                i10 = i20;
                                                i11 = i8;
                                                pushProgState(aVar, i10, offset2, aVar.d, null, i25, offset3);
                                                if (i9 != 0) {
                                                    pushBackTrackState(aVar, REOP_REPEAT, i11);
                                                    i24 = bArr[i11 + 6];
                                                    i25 = 51;
                                                    offset3 = i11 + 7;
                                                    offset3 = i11;
                                                } else if (i10 != 0) {
                                                    offset3 = i11 + 7;
                                                    i24 = bArr[i11 + 6];
                                                    offset3 = i11;
                                                    i25 = 52;
                                                } else {
                                                    pushBackTrackState(aVar, REOP_MINIMALREPEAT, i11);
                                                    popProgState(aVar);
                                                    int i218 = i11 + 4;
                                                    int offset110 = i218 + getOffset(bArr, i218);
                                                    offset3 = offset110 + 1;
                                                    i24 = bArr[offset110];
                                                }
                                                i20 = 0;
                                                i22 = 1;
                                                c = '9';
                                                break;
                                            case 46:
                                                i6 = i20;
                                                offset2 = -1;
                                                i8 = offset3;
                                                i10 = 1;
                                                i9 = i6;
                                                i11 = i8;
                                                pushProgState(aVar, i10, offset2, aVar.d, null, i25, offset3);
                                                if (i9 != 0) {
                                                    pushBackTrackState(aVar, REOP_REPEAT, i11);
                                                    i24 = bArr[i11 + 6];
                                                    i25 = 51;
                                                    offset3 = i11 + 7;
                                                    offset3 = i11;
                                                } else if (i10 != 0) {
                                                    offset3 = i11 + 7;
                                                    i24 = bArr[i11 + 6];
                                                    offset3 = i11;
                                                    i25 = 52;
                                                } else {
                                                    pushBackTrackState(aVar, REOP_MINIMALREPEAT, i11);
                                                    popProgState(aVar);
                                                    int i219 = i11 + 4;
                                                    int offset111 = i219 + getOffset(bArr, i219);
                                                    offset3 = offset111 + 1;
                                                    i24 = bArr[offset111];
                                                }
                                                i20 = 0;
                                                i22 = 1;
                                                c = '9';
                                                break;
                                            case 47:
                                                i6 = i20;
                                                i10 = i20;
                                                i8 = offset3;
                                                offset2 = 1;
                                                i9 = i6;
                                                i11 = i8;
                                                pushProgState(aVar, i10, offset2, aVar.d, null, i25, offset3);
                                                if (i9 != 0) {
                                                    pushBackTrackState(aVar, REOP_REPEAT, i11);
                                                    i24 = bArr[i11 + 6];
                                                    i25 = 51;
                                                    offset3 = i11 + 7;
                                                    offset3 = i11;
                                                } else if (i10 != 0) {
                                                    offset3 = i11 + 7;
                                                    i24 = bArr[i11 + 6];
                                                    offset3 = i11;
                                                    i25 = 52;
                                                } else {
                                                    pushBackTrackState(aVar, REOP_MINIMALREPEAT, i11);
                                                    popProgState(aVar);
                                                    int i2110 = i11 + 4;
                                                    int offset112 = i2110 + getOffset(bArr, i2110);
                                                    offset3 = offset112 + 1;
                                                    i24 = bArr[offset112];
                                                }
                                                i20 = 0;
                                                i22 = 1;
                                                c = '9';
                                                break;
                                            case 48:
                                                i6 = i20;
                                                int offset113 = getOffset(bArr, offset3);
                                                offset2 = getOffset(bArr, offset3 + 2) - 1;
                                                i10 = offset113;
                                                i8 = offset3 + 4;
                                                i9 = i6;
                                                i11 = i8;
                                                pushProgState(aVar, i10, offset2, aVar.d, null, i25, offset3);
                                                if (i9 != 0) {
                                                    pushBackTrackState(aVar, REOP_REPEAT, i11);
                                                    i24 = bArr[i11 + 6];
                                                    i25 = 51;
                                                    offset3 = i11 + 7;
                                                    offset3 = i11;
                                                } else if (i10 != 0) {
                                                    offset3 = i11 + 7;
                                                    i24 = bArr[i11 + 6];
                                                    offset3 = i11;
                                                    i25 = 52;
                                                } else {
                                                    pushBackTrackState(aVar, REOP_MINIMALREPEAT, i11);
                                                    popProgState(aVar);
                                                    int i2111 = i11 + 4;
                                                    int offset114 = i2111 + getOffset(bArr, i2111);
                                                    offset3 = offset114 + 1;
                                                    i24 = bArr[offset114];
                                                }
                                                i20 = 0;
                                                i22 = 1;
                                                c = '9';
                                                break;
                                            default:
                                                throw Kit.codeBug();
                                        }
                                        break;
                                }
                                break;
                            case 49:
                                offset3 = offset3;
                                i24 = i25;
                                i22 = 1;
                                i23 = 1;
                                break;
                            default:
                                switch (i24) {
                                    case 51:
                                        while (true) {
                                            zm8 zm8VarPopProgState2 = popProgState(aVar);
                                            if (i23 == 0) {
                                                if (zm8VarPopProgState2.b == 0) {
                                                    i23 = 1;
                                                }
                                                i12 = zm8VarPopProgState2.f;
                                                i13 = zm8VarPopProgState2.e;
                                                int i38 = offset3 + 4;
                                                offset3 = i38 + getOffset(bArr, i38);
                                                offset3 = i12;
                                                i25 = i13;
                                            } else {
                                                int i39 = zm8VarPopProgState2.b;
                                                if (i39 == 0 && aVar.d == zm8VarPopProgState2.d) {
                                                    i17 = zm8VarPopProgState2.f;
                                                    i18 = zm8VarPopProgState2.e;
                                                    int i40 = offset3 + 4;
                                                    offset3 = i40 + getOffset(bArr, i40);
                                                    offset3 = i17;
                                                    i25 = i18;
                                                    i23 = i20;
                                                } else {
                                                    int i41 = zm8VarPopProgState2.c;
                                                    if (i39 != 0) {
                                                        i39--;
                                                    }
                                                    int i42 = i39;
                                                    if (i41 != -1) {
                                                        i41--;
                                                    }
                                                    int i43 = i41;
                                                    if (i43 == 0) {
                                                        int i44 = zm8VarPopProgState2.f;
                                                        int i45 = zm8VarPopProgState2.e;
                                                        int i46 = offset3 + 4;
                                                        offset3 = i46 + getOffset(bArr, i46);
                                                        offset3 = i44;
                                                        i25 = i45;
                                                        i23 = 1;
                                                    } else {
                                                        int i47 = offset3 + 6;
                                                        int i48 = bArr[i47];
                                                        int i49 = aVar.d;
                                                        if (reopIsSimple(i48)) {
                                                            int iSimpleMatch4 = simpleMatch(aVar, str, i48, bArr, offset3 + 7, i, true);
                                                            if (iSimpleMatch4 < 0) {
                                                                int i50 = i42 == 0 ? 1 : i20;
                                                                int i51 = zm8VarPopProgState2.f;
                                                                int i52 = zm8VarPopProgState2.e;
                                                                int i53 = offset3 + 4;
                                                                offset3 = i53 + getOffset(bArr, i53);
                                                                i23 = i50;
                                                                offset3 = i51;
                                                                i25 = i52;
                                                            } else {
                                                                i15 = iSimpleMatch4;
                                                                i14 = 1;
                                                            }
                                                        } else {
                                                            i14 = i23;
                                                            i15 = i47;
                                                        }
                                                        pushProgState(aVar, i42, i43, i49, null, zm8VarPopProgState2.e, zm8VarPopProgState2.f);
                                                        if (i42 == 0) {
                                                            pushBackTrackState(aVar, REOP_REPEAT, offset3, i49, zm8VarPopProgState2.e, zm8VarPopProgState2.f);
                                                            int index4 = getIndex(bArr, offset3);
                                                            int index5 = getIndex(bArr, offset3 + 2);
                                                            for (int i54 = i20; i54 < index4; i54++) {
                                                                aVar.c(index5 + i54, -1, i20);
                                                            }
                                                        }
                                                        i24 = bArr[i15];
                                                        if (i24 != 49) {
                                                            i16 = i15 + 1;
                                                            i23 = i14;
                                                            i22 = 1;
                                                            c = '9';
                                                            i25 = 51;
                                                            offset3 = i16;
                                                        } else {
                                                            i23 = i14;
                                                        }
                                                    }
                                                }
                                            }
                                            break;
                                        }
                                        break;
                                    case 52:
                                        zm8 zm8VarPopProgState3 = popProgState(aVar);
                                        if (i23 != 0) {
                                            i19 = 52;
                                            int i55 = zm8VarPopProgState3.b;
                                            if (i55 == 0 && aVar.d == zm8VarPopProgState3.d) {
                                                i17 = zm8VarPopProgState3.f;
                                                i18 = zm8VarPopProgState3.e;
                                                offset3 = i17;
                                                i25 = i18;
                                                i23 = i20;
                                                break;
                                            } else {
                                                int i56 = zm8VarPopProgState3.c;
                                                if (i55 != 0) {
                                                    i55--;
                                                }
                                                int i57 = i55;
                                                if (i56 != -1) {
                                                    i56--;
                                                }
                                                pushProgState(aVar, i57, i56, aVar.d, null, zm8VarPopProgState3.e, zm8VarPopProgState3.f);
                                                if (i57 != 0) {
                                                    int index6 = getIndex(bArr, offset3);
                                                    int index7 = getIndex(bArr, offset3 + 2);
                                                    int i58 = offset3 + 6;
                                                    for (int i59 = i20; i59 < index6; i59++) {
                                                        aVar.c(index7 + i59, -1, i20);
                                                    }
                                                    i16 = offset3 + 7;
                                                    i24 = bArr[i58];
                                                } else {
                                                    int i60 = zm8VarPopProgState3.f;
                                                    i25 = zm8VarPopProgState3.e;
                                                    pushBackTrackState(aVar, REOP_MINIMALREPEAT, offset3);
                                                    popProgState(aVar);
                                                    int i61 = offset3 + 4;
                                                    int offset20 = i61 + getOffset(bArr, i61);
                                                    i24 = bArr[offset20];
                                                    offset3 = i60;
                                                    offset3 = offset20 + 1;
                                                }
                                            }
                                            i22 = 1;
                                            c = '9';
                                        } else {
                                            int i62 = zm8VarPopProgState3.c;
                                            if (i62 != -1 && i62 <= 0) {
                                                i12 = zm8VarPopProgState3.f;
                                                i13 = zm8VarPopProgState3.e;
                                                offset3 = i12;
                                                i25 = i13;
                                            } else {
                                                i19 = 52;
                                                pushProgState(aVar, zm8VarPopProgState3.b, i62, aVar.d, null, zm8VarPopProgState3.e, zm8VarPopProgState3.f);
                                                int index8 = getIndex(bArr, offset3);
                                                int index9 = getIndex(bArr, offset3 + 2);
                                                int i63 = offset3 + 6;
                                                for (int i64 = i20; i64 < index8; i64++) {
                                                    aVar.c(index9 + i64, -1, i20);
                                                }
                                                i16 = offset3 + 7;
                                                i24 = bArr[i63];
                                            }
                                        }
                                        i25 = i19;
                                        i22 = 1;
                                        c = '9';
                                        offset3 = i16;
                                        break;
                                    case 53:
                                    case 54:
                                    case 55:
                                        char index10 = (char) getIndex(bArr, offset3);
                                        char index11 = (char) getIndex(bArr, offset3 + 2);
                                        offset3 += 4;
                                        int i65 = aVar.d;
                                        if (i65 != i) {
                                            char cCharAt = str.charAt(i65);
                                            if (i24 == 55) {
                                                if (cCharAt == index10 || classMatcher(aVar, aVar.b.classList[index11], cCharAt)) {
                                                    offset = offset3 + getOffset(bArr, offset3);
                                                    i3 = offset3 + 3;
                                                    i4 = bArr[offset3 + 2];
                                                    int i310 = aVar.d;
                                                    if (reopIsSimple(i4)) {
                                                        iSimpleMatch = simpleMatch(aVar, str, i4, bArr, i3, i, true);
                                                        if (iSimpleMatch < 0) {
                                                            offset3 = offset + 1;
                                                            i24 = bArr[offset];
                                                        } else {
                                                            i5 = bArr[iSimpleMatch];
                                                            offset3 = iSimpleMatch + 1;
                                                            i23 = 1;
                                                        }
                                                    } else {
                                                        i5 = i4;
                                                        offset3 = i3;
                                                    }
                                                    pushBackTrackState(aVar, bArr[offset], offset + 1, i310, i25, offset3);
                                                    i24 = i5;
                                                }
                                                i20 = 0;
                                                i22 = 1;
                                                c = '9';
                                            } else {
                                                if (i24 == 54) {
                                                    cCharAt = upcase(cCharAt);
                                                }
                                                if (cCharAt == index10 || cCharAt == index11) {
                                                    offset = offset3 + getOffset(bArr, offset3);
                                                    i3 = offset3 + 3;
                                                    i4 = bArr[offset3 + 2];
                                                    int i311 = aVar.d;
                                                    if (reopIsSimple(i4)) {
                                                        iSimpleMatch = simpleMatch(aVar, str, i4, bArr, i3, i, true);
                                                        if (iSimpleMatch < 0) {
                                                            offset3 = offset + 1;
                                                            i24 = bArr[offset];
                                                        } else {
                                                            i5 = bArr[iSimpleMatch];
                                                            offset3 = iSimpleMatch + 1;
                                                            i23 = 1;
                                                        }
                                                    } else {
                                                        i5 = i4;
                                                        offset3 = i3;
                                                    }
                                                    pushBackTrackState(aVar, bArr[offset], offset + 1, i311, i25, offset3);
                                                    i24 = i5;
                                                }
                                                i20 = 0;
                                                i22 = 1;
                                                c = '9';
                                            }
                                        }
                                        i23 = i20;
                                        break;
                                    default:
                                        throw Kit.codeBug("invalid bytecode");
                                }
                                break;
                        }
                        break;
                }
            } else {
                int iSimpleMatch5 = simpleMatch(aVar, str, i24, bArr, offset3, i, true);
                int i66 = iSimpleMatch5 >= 0 ? i22 : i20;
                if (i66 != 0) {
                    offset3 = iSimpleMatch5;
                }
                i23 = i66;
            }
            if (i23 == 0) {
                xm8 xm8Var = aVar.g;
                if (xm8Var == null) {
                    return false;
                }
                aVar.g = xm8Var.a;
                aVar.e = xm8Var.g;
                aVar.d = xm8Var.d;
                aVar.f = xm8Var.h;
                i25 = xm8Var.e;
                offset3 = xm8Var.f;
                offset3 = xm8Var.c;
                i24 = xm8Var.b;
            } else {
                i2 = offset3 + 1;
                i24 = bArr[offset3];
                offset3 = i2;
            }
            i20 = 0;
            i22 = 1;
            c = '9';
        }
    }

    private static boolean flatNIMatcher(a aVar, int i, int i2, String str, int i3) {
        if (aVar.d + i2 > i3) {
            return false;
        }
        char[] cArr = aVar.b.source;
        for (int i4 = 0; i4 < i2; i4++) {
            char c = cArr[i + i4];
            char cCharAt = str.charAt(aVar.d + i4);
            if (c != cCharAt && upcase(c) != upcase(cCharAt)) {
                return false;
            }
        }
        aVar.d += i2;
        return true;
    }

    private static boolean flatNMatcher(a aVar, int i, int i2, String str, int i3) {
        if (aVar.d + i2 > i3) {
            return false;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            if (aVar.b.source[i + i4] != str.charAt(aVar.d + i4)) {
                return false;
            }
        }
        aVar.d += i2;
        return true;
    }

    private static int getDecimalValue(char c, gb1 gb1Var, int i, String str) {
        int i2 = gb1Var.d;
        char[] cArr = gb1Var.b;
        int i3 = c - 48;
        boolean z = false;
        while (true) {
            int i4 = gb1Var.d;
            if (i4 == gb1Var.c) {
                break;
            }
            char c2 = cArr[i4];
            if (!isDigit(c2)) {
                break;
            }
            if (!z && (i3 = (i3 * 10) + (c2 - '0')) >= i) {
                i3 = i;
                z = true;
            }
            gb1Var.d++;
        }
        if (z) {
            reportError(str, String.valueOf(cArr, i2, gb1Var.d - i2));
        }
        return i3;
    }

    private static RegExpImpl getImpl(Context context) {
        return (RegExpImpl) ScriptRuntime.getRegExpProxy(context);
    }

    private static int getIndex(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    private static int getOffset(byte[] bArr, int i) {
        return getIndex(bArr, i);
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        NativeRegExp nativeRegExp = new NativeRegExp();
        nativeRegExp.re = compileRE(context, "", null, false);
        nativeRegExp.activatePrototypeMap(8);
        nativeRegExp.setParentScope(scriptable);
        nativeRegExp.setPrototype(ScriptableObject.getObjectPrototype(scriptable));
        NativeRegExpCtor nativeRegExpCtor = new NativeRegExpCtor();
        nativeRegExp.defineProperty("constructor", nativeRegExpCtor, 2);
        ScriptRuntime.setFunctionProtoAndParent(nativeRegExpCtor, scriptable);
        nativeRegExpCtor.setImmunePrototypeProperty(nativeRegExp);
        if (z) {
            nativeRegExp.sealObject();
            nativeRegExpCtor.sealObject();
        }
        ScriptableObject.defineProperty(scriptable, "RegExp", nativeRegExpCtor, 2);
    }

    private static boolean isControlLetter(char c) {
        return ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z');
    }

    public static boolean isDigit(char c) {
        return '0' <= c && c <= '9';
    }

    private static boolean isLineTerm(char c) {
        return ScriptRuntime.isJSLineTerminator(c);
    }

    private static boolean isREWhiteSpace(int i) {
        return ScriptRuntime.isJSWhitespaceOrLineTerminator(i);
    }

    private static boolean isWord(char c) {
        return ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z') || isDigit(c) || c == '_';
    }

    private static boolean matchRegExp(a aVar, RECompiled rECompiled, String str, int i, int i2, boolean z) {
        int i3 = rECompiled.parenCount;
        if (i3 != 0) {
            aVar.e = new long[i3];
        } else {
            aVar.e = null;
        }
        aVar.g = null;
        aVar.f = null;
        aVar.a = z || (rECompiled.flags & 4) != 0;
        aVar.b = rECompiled;
        int i4 = rECompiled.anchorCh;
        int i5 = i;
        while (i5 <= i2) {
            if (i4 >= 0) {
                while (i5 != i2) {
                    char cCharAt = str.charAt(i5);
                    if (cCharAt != i4 && ((aVar.b.flags & 2) == 0 || upcase(cCharAt) != upcase((char) i4))) {
                        i5++;
                    }
                }
                return false;
            }
            aVar.d = i5;
            aVar.c = i5 - i;
            for (int i6 = 0; i6 < rECompiled.parenCount; i6++) {
                aVar.e[i6] = -1;
            }
            boolean zExecuteREBytecode = executeREBytecode(aVar, str, i2);
            aVar.g = null;
            aVar.f = null;
            if (zExecuteREBytecode) {
                return true;
            }
            if (i4 == -2 && !aVar.a) {
                aVar.c = i2;
                return false;
            }
            i5 = aVar.c + i + 1;
        }
        return false;
    }

    private static boolean parseAlternative(gb1 gb1Var) {
        char c;
        char[] cArr = gb1Var.b;
        ym8 ym8Var = null;
        ym8 ym8Var2 = null;
        while (true) {
            int i = gb1Var.d;
            if (i == gb1Var.c || (c = cArr[i]) == '|' || (gb1Var.i != 0 && c == ')')) {
                break;
            }
            if (!parseTerm(gb1Var)) {
                return false;
            }
            if (ym8Var == null) {
                ym8Var = gb1Var.l;
                ym8Var2 = ym8Var;
            } else {
                ym8Var2.b = gb1Var.l;
            }
            while (true) {
                ym8 ym8Var3 = ym8Var2.b;
                if (ym8Var3 != null) {
                    ym8Var2 = ym8Var3;
                }
            }
        }
        if (ym8Var == null) {
            gb1Var.l = new ym8((byte) 1);
        } else {
            gb1Var.l = ym8Var;
        }
        return true;
    }

    private static boolean parseDisjunction(gb1 gb1Var) {
        int i;
        int i2;
        if (!parseAlternative(gb1Var)) {
            return false;
        }
        char[] cArr = gb1Var.b;
        int i3 = gb1Var.d;
        if (i3 != cArr.length && cArr[i3] == '|') {
            gb1Var.d = i3 + 1;
            ym8 ym8Var = new ym8(REOP_ALT);
            ym8Var.c = gb1Var.l;
            if (!parseDisjunction(gb1Var)) {
                return false;
            }
            ym8 ym8Var2 = gb1Var.l;
            ym8Var.d = ym8Var2;
            gb1Var.l = ym8Var;
            ym8 ym8Var3 = ym8Var.c;
            byte b = ym8Var3.a;
            if (b == 14 && ym8Var2.a == 14) {
                ym8Var.a = (gb1Var.e & 2) == 0 ? REOP_ALTPREREQ : REOP_ALTPREREQi;
                ym8Var.o = ym8Var3.o;
                ym8Var.m = ym8Var2.o;
                gb1Var.k += 13;
            } else if (b == 22 && (i2 = ym8Var3.m) < 256 && ym8Var2.a == 14 && (gb1Var.e & 2) == 0) {
                ym8Var.a = REOP_ALTPREREQ2;
                ym8Var.o = ym8Var2.o;
                ym8Var.m = i2;
                gb1Var.k += 13;
            } else if (b == 14 && ym8Var2.a == 22 && (i = ym8Var2.m) < 256 && (gb1Var.e & 2) == 0) {
                ym8Var.a = REOP_ALTPREREQ2;
                ym8Var.o = ym8Var3.o;
                ym8Var.m = i;
                gb1Var.k += 13;
            } else {
                gb1Var.k += 9;
            }
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:182:0x0382  */
    /* JADX WARN: Code duplicated, block: B:186:0x039b  */
    /* JADX WARN: Code duplicated, block: B:194:0x03df A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:195:0x03e0  */
    /* JADX WARN: Code duplicated, block: B:200:0x0402  */
    /* JADX WARN: Code duplicated, block: B:205:0x015d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:206:0x014f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x013d  */
    /* JADX WARN: Code duplicated, block: B:75:0x0143  */
    /* JADX WARN: Code duplicated, block: B:78:0x015a A[LOOP:0: B:72:0x013b->B:78:0x015a, LOOP_END] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v32, types: [int] */
    /* JADX WARN: Type inference failed for: r3v33, types: [int] */
    /* JADX WARN: Type inference failed for: r3v37, types: [char] */
    /* JADX WARN: Type inference failed for: r3v63 */
    private static boolean parseTerm(gb1 gb1Var) {
        boolean z;
        int i;
        ym8 ym8Var;
        char c;
        int i2;
        char c2;
        char c3;
        int i3;
        char c4;
        int i4;
        int iXDigitToInt;
        ym8 ym8Var2;
        char c5;
        char[] cArr = gb1Var.b;
        int i5 = gb1Var.d;
        int i6 = i5 + 1;
        gb1Var.d = i6;
        char c6 = cArr[i5];
        int i7 = gb1Var.h;
        if (c6 == '$') {
            gb1Var.l = new ym8((byte) 3);
            gb1Var.k++;
            return true;
        }
        if (c6 != '.') {
            if (c6 != '?') {
                if (c6 == '^') {
                    gb1Var.l = new ym8((byte) 2);
                    gb1Var.k++;
                    return true;
                }
                if (c6 != '[') {
                    int i8 = 4;
                    if (c6 != '\\') {
                        switch (c6) {
                            case '(':
                                if (i5 + 2 < gb1Var.c && cArr[i6] == '?' && ((c5 = cArr[i5 + 2]) == '=' || c5 == '!' || c5 == ':')) {
                                    gb1Var.d = i5 + 3;
                                    if (c5 == '=') {
                                        ym8Var2 = new ym8(REOP_ASSERT);
                                        gb1Var.k += 4;
                                    } else if (c5 == '!') {
                                        ym8Var2 = new ym8(REOP_ASSERT_NOT);
                                        gb1Var.k += 4;
                                    } else {
                                        ym8Var2 = null;
                                    }
                                } else {
                                    ym8Var2 = new ym8(REOP_LPAREN);
                                    gb1Var.k += 6;
                                    int i9 = gb1Var.h;
                                    gb1Var.h = i9 + 1;
                                    ym8Var2.e = i9;
                                }
                                gb1Var.i++;
                                if (!parseDisjunction(gb1Var)) {
                                    return false;
                                }
                                int i10 = gb1Var.d;
                                if (i10 == gb1Var.c || cArr[i10] != ')') {
                                    reportError("msg.unterm.paren", "");
                                    return false;
                                }
                                gb1Var.d = i10 + 1;
                                gb1Var.i--;
                                if (ym8Var2 != null) {
                                    ym8Var2.c = gb1Var.l;
                                    gb1Var.l = ym8Var2;
                                }
                                break;
                                break;
                            case ')':
                                reportError("msg.re.unmatched.right.paren", "");
                                return false;
                            case '*':
                            case '+':
                                break;
                            default:
                                ym8 ym8Var3 = new ym8(REOP_FLAT);
                                gb1Var.l = ym8Var3;
                                ym8Var3.o = c6;
                                ym8Var3.p = 1;
                                ym8Var3.q = gb1Var.d - 1;
                                gb1Var.k += 3;
                                break;
                        }
                    } else {
                        int i11 = gb1Var.c;
                        if (i6 >= i11) {
                            reportError("msg.trail.backslash", "");
                            return false;
                        }
                        int i12 = i5 + 2;
                        gb1Var.d = i12;
                        char c7 = cArr[i6];
                        if (c7 == 'B') {
                            gb1Var.l = new ym8((byte) 5);
                            gb1Var.k++;
                            return true;
                        }
                        if (c7 == 'D') {
                            gb1Var.l = new ym8((byte) 8);
                            gb1Var.k++;
                        } else if (c7 == 'S') {
                            gb1Var.l = new ym8(REOP_NONSPACE);
                            gb1Var.k++;
                        } else if (c7 == 'W') {
                            gb1Var.l = new ym8((byte) 10);
                            gb1Var.k++;
                        } else if (c7 == 'f') {
                            doFlat(gb1Var, '\f');
                        } else if (c7 != 'n') {
                            switch (c7) {
                                case '0':
                                    reportWarning(gb1Var.a, "msg.bad.backref", "");
                                    int i13 = 0;
                                    while (i13 < 32) {
                                        int i14 = gb1Var.d;
                                        if (i14 >= gb1Var.c || (c = cArr[i14]) < '0' || c > '7') {
                                            doFlat(gb1Var, (char) i13);
                                        } else {
                                            gb1Var.d = i14 + 1;
                                            i13 = (i13 * 8) + (c - '0');
                                        }
                                        break;
                                    }
                                    doFlat(gb1Var, (char) i13);
                                    break;
                                case '1':
                                case '2':
                                case '3':
                                case '4':
                                case '5':
                                case '6':
                                case '7':
                                case '8':
                                case '9':
                                    int i15 = i5 + 1;
                                    int decimalValue = getDecimalValue(c7, gb1Var, 65535, "msg.overlarge.backref");
                                    if (decimalValue > gb1Var.f) {
                                        reportWarning(gb1Var.a, "msg.bad.backref", "");
                                    }
                                    if (decimalValue <= gb1Var.f) {
                                        ym8 ym8Var4 = new ym8(REOP_BACKREF);
                                        gb1Var.l = ym8Var4;
                                        ym8Var4.e = decimalValue - 1;
                                        gb1Var.k += 3;
                                        if (gb1Var.g < decimalValue) {
                                            gb1Var.g = decimalValue;
                                        }
                                    } else {
                                        gb1Var.d = i15;
                                        if (c7 < '8') {
                                            gb1Var.d = i5 + 2;
                                            int i16 = c7 - '0';
                                            while (i16 < 32 && (i2 = gb1Var.d) < gb1Var.c && (c2 = cArr[i2]) >= '0' && c2 <= '7') {
                                                gb1Var.d = i2 + 1;
                                                i16 = (i16 * 8) + (c2 - '0');
                                            }
                                            doFlat(gb1Var, (char) i16);
                                        } else {
                                            doFlat(gb1Var, IOUtils.DIR_SEPARATOR_WINDOWS);
                                        }
                                    }
                                    break;
                                default:
                                    switch (c7) {
                                        case 'b':
                                            gb1Var.l = new ym8((byte) 4);
                                            gb1Var.k++;
                                            return true;
                                        case 'c':
                                            if (i12 >= i11 || !isControlLetter(cArr[i12])) {
                                                gb1Var.d--;
                                                c3 = IOUtils.DIR_SEPARATOR_WINDOWS;
                                            } else {
                                                int i17 = gb1Var.d;
                                                gb1Var.d = i17 + 1;
                                                c3 = (char) (cArr[i17] & 31);
                                            }
                                            doFlat(gb1Var, c3);
                                            break;
                                        case 'd':
                                            gb1Var.l = new ym8((byte) 7);
                                            gb1Var.k++;
                                            break;
                                        default:
                                            switch (c7) {
                                                case 'r':
                                                    doFlat(gb1Var, CharUtils.CR);
                                                    break;
                                                case 's':
                                                    gb1Var.l = new ym8((byte) 11);
                                                    gb1Var.k++;
                                                    break;
                                                case 't':
                                                    doFlat(gb1Var, '\t');
                                                    break;
                                                case 'u':
                                                    i3 = 0;
                                                    c4 = 0;
                                                    while (i3 < i8) {
                                                        i4 = gb1Var.d;
                                                        if (i4 < gb1Var.c) {
                                                            gb1Var.d = i4 + 1;
                                                            iXDigitToInt = Kit.xDigitToInt(cArr[i4], c4);
                                                            if (iXDigitToInt < 0) {
                                                                int i18 = gb1Var.d - (i3 + 2);
                                                                gb1Var.d = i18 + 1;
                                                                c4 = cArr[i18];
                                                            } else {
                                                                i3++;
                                                                c4 = iXDigitToInt;
                                                            }
                                                        }
                                                        doFlat(gb1Var, (char) c4);
                                                        break;
                                                    }
                                                    doFlat(gb1Var, (char) c4);
                                                    break;
                                                case 'v':
                                                    doFlat(gb1Var, (char) 11);
                                                    break;
                                                case 'w':
                                                    gb1Var.l = new ym8((byte) 9);
                                                    gb1Var.k++;
                                                    break;
                                                case 'x':
                                                    i8 = 2;
                                                    i3 = 0;
                                                    c4 = 0;
                                                    while (i3 < i8) {
                                                        i4 = gb1Var.d;
                                                        if (i4 < gb1Var.c) {
                                                            gb1Var.d = i4 + 1;
                                                            iXDigitToInt = Kit.xDigitToInt(cArr[i4], c4);
                                                            if (iXDigitToInt < 0) {
                                                                int i19 = gb1Var.d - (i3 + 2);
                                                                gb1Var.d = i19 + 1;
                                                                c4 = cArr[i19];
                                                            } else {
                                                                i3++;
                                                                c4 = iXDigitToInt;
                                                            }
                                                        }
                                                        doFlat(gb1Var, (char) c4);
                                                        break;
                                                    }
                                                    doFlat(gb1Var, (char) c4);
                                                    break;
                                                default:
                                                    ym8 ym8Var5 = new ym8(REOP_FLAT);
                                                    gb1Var.l = ym8Var5;
                                                    ym8Var5.o = c7;
                                                    ym8Var5.p = 1;
                                                    ym8Var5.q = gb1Var.d - 1;
                                                    gb1Var.k += 3;
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                        } else {
                            doFlat(gb1Var, '\n');
                        }
                    }
                } else {
                    ym8 ym8Var6 = new ym8(REOP_CLASS);
                    gb1Var.l = ym8Var6;
                    int i20 = gb1Var.d;
                    ym8Var6.j = i20;
                    while (true) {
                        int i21 = gb1Var.d;
                        if (i21 == gb1Var.c) {
                            reportError("msg.unterm.class", "");
                            return false;
                        }
                        char c8 = cArr[i21];
                        if (c8 != '\\') {
                            if (c8 == ']') {
                                ym8 ym8Var7 = gb1Var.l;
                                ym8Var7.k = i21 - i20;
                                int i22 = gb1Var.j;
                                gb1Var.j = i22 + 1;
                                ym8Var7.m = i22;
                                gb1Var.d = i21 + 1;
                                if (!calculateBitmapSize(gb1Var, ym8Var7, cArr, i20, i21)) {
                                    return false;
                                }
                                gb1Var.k += 3;
                                break;
                            }
                        } else {
                            gb1Var.d = i21 + 1;
                        }
                        gb1Var.d++;
                    }
                }
            }
            reportError("msg.bad.quant", String.valueOf(cArr[i5]));
            return false;
        }
        gb1Var.l = new ym8((byte) 6);
        gb1Var.k++;
        ym8 ym8Var8 = gb1Var.l;
        int i23 = gb1Var.d;
        if (i23 == gb1Var.c) {
            return true;
        }
        char c9 = cArr[i23];
        int decimalValue2 = -1;
        if (c9 == '*') {
            ym8 ym8Var9 = new ym8(REOP_QUANT);
            gb1Var.l = ym8Var9;
            ym8Var9.f = 0;
            ym8Var9.g = -1;
            gb1Var.k += 8;
        } else {
            if (c9 != '+') {
                if (c9 == '?') {
                    ym8 ym8Var10 = new ym8(REOP_QUANT);
                    gb1Var.l = ym8Var10;
                    ym8Var10.f = 0;
                    ym8Var10.g = 1;
                    gb1Var.k += 8;
                } else if (c9 != '{') {
                    z = false;
                } else {
                    int i24 = i23 + 1;
                    gb1Var.d = i24;
                    if (i24 < cArr.length) {
                        char c10 = cArr[i24];
                        if (isDigit(c10)) {
                            gb1Var.d++;
                            int decimalValue3 = getDecimalValue(c10, gb1Var, 65535, "msg.overlarge.min");
                            int i25 = gb1Var.d;
                            if (i25 >= cArr.length) {
                                z = false;
                            } else {
                                char c11 = cArr[i25];
                                if (c11 == ',') {
                                    int i26 = i25 + 1;
                                    gb1Var.d = i26;
                                    if (i26 < cArr.length) {
                                        c11 = cArr[i26];
                                        if (isDigit(c11)) {
                                            int i27 = gb1Var.d + 1;
                                            gb1Var.d = i27;
                                            if (i27 < cArr.length) {
                                                decimalValue2 = getDecimalValue(c11, gb1Var, 65535, "msg.overlarge.max");
                                                c11 = cArr[gb1Var.d];
                                                if (decimalValue3 > decimalValue2) {
                                                    reportError("msg.max.lt.min", String.valueOf(c11));
                                                    return false;
                                                }
                                            }
                                        }
                                    } else {
                                        decimalValue2 = decimalValue3;
                                    }
                                } else {
                                    decimalValue2 = decimalValue3;
                                }
                                if (c11 == '}') {
                                    ym8 ym8Var11 = new ym8(REOP_QUANT);
                                    gb1Var.l = ym8Var11;
                                    ym8Var11.f = decimalValue3;
                                    ym8Var11.g = decimalValue2;
                                    gb1Var.k += 12;
                                    z = true;
                                } else {
                                    z = false;
                                }
                            }
                        } else {
                            z = false;
                        }
                    } else {
                        z = false;
                    }
                    if (!z) {
                        gb1Var.d = i23;
                    }
                }
                if (!z) {
                    return true;
                }
                int i28 = gb1Var.d;
                i = i28 + 1;
                gb1Var.d = i;
                ym8Var = gb1Var.l;
                ym8Var.c = ym8Var8;
                ym8Var.e = i7;
                ym8Var.h = gb1Var.h - i7;
                if (i < gb1Var.c || cArr[i] != '?') {
                    ym8Var.i = true;
                } else {
                    gb1Var.d = i28 + 2;
                    ym8Var.i = false;
                }
                return true;
            }
            ym8 ym8Var12 = new ym8(REOP_QUANT);
            gb1Var.l = ym8Var12;
            ym8Var12.f = 1;
            ym8Var12.g = -1;
            gb1Var.k += 8;
        }
        z = true;
        if (!z) {
            return true;
        }
        int i29 = gb1Var.d;
        i = i29 + 1;
        gb1Var.d = i;
        ym8Var = gb1Var.l;
        ym8Var.c = ym8Var8;
        ym8Var.e = i7;
        ym8Var.h = gb1Var.h - i7;
        if (i < gb1Var.c) {
            ym8Var.i = true;
        } else {
            ym8Var.i = true;
        }
        return true;
    }

    private static zm8 popProgState(a aVar) {
        zm8 zm8Var = aVar.f;
        aVar.f = zm8Var.a;
        return zm8Var;
    }

    private static void processCharSet(a aVar, RECharSet rECharSet) {
        synchronized (rECharSet) {
            try {
                if (!rECharSet.converted) {
                    processCharSetImpl(aVar, rECharSet);
                    rECharSet.converted = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0059. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:26:0x005c. Please report as an issue. */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:41:0x0084
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:127)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:75)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:115)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:127)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:75)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:115)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:127)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:75)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:115)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:162)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    private static void processCharSetImpl(org.mozilla.javascript.regexp.a r17, org.mozilla.javascript.regexp.RECharSet r18) {
        /*
            Method dump skipped, instruction units count: 496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.NativeRegExp.processCharSetImpl(org.mozilla.javascript.regexp.a, org.mozilla.javascript.regexp.RECharSet):void");
    }

    private static void pushBackTrackState(a aVar, byte b, int i) {
        zm8 zm8Var = aVar.f;
        aVar.g = new xm8(aVar, b, i, aVar.d, zm8Var.e, zm8Var.f);
    }

    private static void pushProgState(a aVar, int i, int i2, int i3, xm8 xm8Var, int i4, int i5) {
        aVar.f = new zm8(aVar.f, i, i2, i3, xm8Var, i4, i5);
    }

    private static NativeRegExp realThis(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        if (scriptable instanceof NativeRegExp) {
            return (NativeRegExp) scriptable;
        }
        throw IdScriptableObject.incompatibleCallError(idFunctionObject);
    }

    private static boolean reopIsSimple(int i) {
        return i >= 1 && i <= 23;
    }

    private static void reportError(String str, String str2) {
        throw ScriptRuntime.constructError("SyntaxError", ScriptRuntime.getMessage1(str, str2));
    }

    private static void reportWarning(Context context, String str, String str2) {
        if (context.hasFeature(11)) {
            Context.reportWarning(ScriptRuntime.getMessage1(str, str2));
        }
    }

    private static void resolveForwardJump(byte[] bArr, int i, int i2) {
        if (i > i2) {
            throw Kit.codeBug();
        }
        addIndex(bArr, i, i2 - i);
    }

    private void setLastIndex(Object obj) {
        if ((this.lastIndexAttr & 1) != 0) {
            throw ScriptRuntime.typeError1("msg.modify.readonly", "lastIndex");
        }
        this.lastIndex = obj;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:108:0x01c6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:109:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:111:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:11:0x002d A[PHI: r7
      0x002d: PHI (r7v9 int) = 
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v5 int)
      (r7v7 int)
      (r7v7 int)
      (r7v8 int)
      (r7v8 int)
      (r7v10 int)
      (r7v10 int)
     binds: [B:103:0x01b4, B:105:0x01c0, B:97:0x01a3, B:99:0x01ad, B:67:0x0147, B:69:0x0151, B:63:0x0134, B:65:0x013e, B:59:0x0121, B:61:0x012b, B:55:0x010e, B:57:0x0118, B:51:0x00fb, B:53:0x0105, B:47:0x00e8, B:49:0x00f2, B:43:0x00d5, B:45:0x00df, B:34:0x008e, B:20:0x005b, B:22:0x0061, B:13:0x0039, B:17:0x0049, B:7:0x0014, B:9:0x0024] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:82:0x017b A[PHI: r5
      0x017b: PHI (r5v10 boolean) = (r5v5 boolean), (r5v13 boolean), (r5v13 boolean) binds: [B:93:0x019c, B:78:0x016e, B:80:0x0178] A[DONT_GENERATE, DONT_INLINE]] */
    private static int simpleMatch(a aVar, String str, int i, byte[] bArr, int i2, int i3, boolean z) {
        boolean z2;
        int i4;
        char cCharAt;
        int i5 = aVar.d;
        boolean zBackrefMatcher = true;
        switch (i) {
            case 1:
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 2:
                if (i5 != 0 && (!aVar.a || !isLineTerm(str.charAt(i5 - 1)))) {
                    zBackrefMatcher = false;
                }
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 3:
                if (i5 != i3 && (!aVar.a || !isLineTerm(str.charAt(i5)))) {
                    zBackrefMatcher = false;
                }
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 4:
                z2 = i5 == 0 || !isWord(str.charAt(i5 + (-1)));
                int i6 = aVar.d;
                if (i6 < i3 && isWord(str.charAt(i6))) {
                    zBackrefMatcher = false;
                }
                zBackrefMatcher ^= z2;
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 5:
                z2 = i5 == 0 || !isWord(str.charAt(i5 + (-1)));
                int i7 = aVar.d;
                if (i7 >= i3 || !isWord(str.charAt(i7))) {
                    zBackrefMatcher = false;
                }
                zBackrefMatcher ^= z2;
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 6:
                if (i5 == i3 || isLineTerm(str.charAt(i5))) {
                    zBackrefMatcher = false;
                } else {
                    aVar.d++;
                }
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 7:
                if (i5 == i3 || !isDigit(str.charAt(i5))) {
                    zBackrefMatcher = false;
                } else {
                    aVar.d++;
                }
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 8:
                if (i5 == i3 || isDigit(str.charAt(i5))) {
                    zBackrefMatcher = false;
                } else {
                    aVar.d++;
                }
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 9:
                if (i5 == i3 || !isWord(str.charAt(i5))) {
                    zBackrefMatcher = false;
                } else {
                    aVar.d++;
                }
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 10:
                if (i5 == i3 || isWord(str.charAt(i5))) {
                    zBackrefMatcher = false;
                } else {
                    aVar.d++;
                }
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 11:
                if (i5 == i3 || !isREWhiteSpace(str.charAt(i5))) {
                    zBackrefMatcher = false;
                } else {
                    aVar.d++;
                }
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 12:
                if (i5 == i3 || isREWhiteSpace(str.charAt(i5))) {
                    zBackrefMatcher = false;
                } else {
                    aVar.d++;
                }
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 13:
                int index = getIndex(bArr, i2);
                i2 += 2;
                zBackrefMatcher = backrefMatcher(aVar, index, str, i3);
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 14:
                int index2 = getIndex(bArr, i2);
                int index3 = getIndex(bArr, i2 + 2);
                i2 += 4;
                zBackrefMatcher = flatNMatcher(aVar, index2, index3, str, i3);
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 15:
                i4 = i2 + 1;
                char c = (char) (bArr[i2] & 255);
                if (i5 != i3 && str.charAt(i5) == c) {
                    aVar.d++;
                    i2 = i4;
                    if (zBackrefMatcher) {
                        aVar.d = i5;
                        return -1;
                    }
                    if (!z) {
                        aVar.d = i5;
                    }
                    return i2;
                }
                i2 = i4;
                zBackrefMatcher = false;
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 16:
                int index4 = getIndex(bArr, i2);
                int index5 = getIndex(bArr, i2 + 2);
                i2 += 4;
                zBackrefMatcher = flatNIMatcher(aVar, index4, index5, str, i3);
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 17:
                i4 = i2 + 1;
                char c2 = (char) (bArr[i2] & 255);
                if (i5 != i3) {
                    char cCharAt2 = str.charAt(i5);
                    if (c2 == cCharAt2 || upcase(c2) == upcase(cCharAt2)) {
                        aVar.d++;
                    } else {
                        zBackrefMatcher = false;
                    }
                    i2 = i4;
                    if (zBackrefMatcher) {
                        aVar.d = i5;
                        return -1;
                    }
                    if (!z) {
                        aVar.d = i5;
                    }
                    return i2;
                }
                i2 = i4;
                zBackrefMatcher = false;
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 18:
                char index6 = (char) getIndex(bArr, i2);
                i2 += 2;
                int i8 = aVar.d;
                if (i8 == i3 || str.charAt(i8) != index6) {
                    zBackrefMatcher = false;
                } else {
                    aVar.d++;
                }
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 19:
                char index7 = (char) getIndex(bArr, i2);
                i2 += 2;
                int i9 = aVar.d;
                if (i9 == i3 || !(index7 == (cCharAt = str.charAt(i9)) || upcase(index7) == upcase(cCharAt))) {
                    zBackrefMatcher = false;
                } else {
                    aVar.d++;
                }
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
            case 20:
            case 21:
            default:
                throw Kit.codeBug();
            case 22:
            case 23:
                int index8 = getIndex(bArr, i2);
                i2 += 2;
                int i10 = aVar.d;
                if (i10 == i3 || !classMatcher(aVar, aVar.b.classList[index8], str.charAt(i10))) {
                    zBackrefMatcher = false;
                } else {
                    aVar.d++;
                }
                if (zBackrefMatcher) {
                    aVar.d = i5;
                    return -1;
                }
                if (!z) {
                    aVar.d = i5;
                }
                return i2;
        }
    }

    private static int toASCIIHexDigit(int i) {
        if (i < 48) {
            return -1;
        }
        if (i <= 57) {
            return i - 48;
        }
        int i2 = i | 32;
        if (97 > i2 || i2 > 102) {
            return -1;
        }
        return i2 - 87;
    }

    private static char upcase(char c) {
        if (c < 128) {
            return ('a' > c || c > 'z') ? c : (char) (c - ' ');
        }
        char upperCase = Character.toUpperCase(c);
        return upperCase < 128 ? c : upperCase;
    }

    @Override
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (context.getLanguageVersion() < 200) {
            return execSub(context, scriptable, objArr, 1);
        }
        throw ScriptRuntime.notFunctionError(scriptable2);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0037  */
    public Scriptable compile(Context context, Scriptable scriptable, Object[] objArr) {
        String strEscapeRegExp;
        Object obj;
        if (objArr.length > 0) {
            Object obj2 = objArr[0];
            if (obj2 instanceof NativeRegExp) {
                if (objArr.length > 1 && objArr[1] != Undefined.instance) {
                    throw ScriptRuntime.typeError0("msg.bad.regexp.compile");
                }
                NativeRegExp nativeRegExp = (NativeRegExp) obj2;
                this.re = nativeRegExp.re;
                setLastIndex(nativeRegExp.lastIndex);
                return this;
            }
        }
        if (objArr.length != 0) {
            Object obj3 = objArr[0];
            if (obj3 instanceof Undefined) {
                strEscapeRegExp = "";
            } else {
                strEscapeRegExp = escapeRegExp(obj3);
            }
        } else {
            strEscapeRegExp = "";
        }
        this.re = compileRE(context, strEscapeRegExp, (objArr.length <= 1 || (obj = objArr[1]) == Undefined.instance) ? null : ScriptRuntime.toString(obj), false);
        setLastIndex(ScriptRuntime.zeroObj);
        return this;
    }

    @Override
    public Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) {
        if (context.getLanguageVersion() < 200) {
            return (Scriptable) execSub(context, scriptable, objArr, 1);
        }
        throw ScriptRuntime.notFunctionError(this);
    }

    @Override
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(REGEXP_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int iMethodId = idFunctionObject.methodId();
        switch (iMethodId) {
            case 1:
                return realThis(scriptable2, idFunctionObject).compile(context, scriptable, objArr);
            case 2:
            case 3:
                return realThis(scriptable2, idFunctionObject).toString();
            case 4:
                return realThis(scriptable2, idFunctionObject).execSub(context, scriptable, objArr, 1);
            case 5:
                Object objExecSub = realThis(scriptable2, idFunctionObject).execSub(context, scriptable, objArr, 0);
                Boolean bool = Boolean.TRUE;
                return bool.equals(objExecSub) ? bool : Boolean.FALSE;
            case 6:
                return realThis(scriptable2, idFunctionObject).execSub(context, scriptable, objArr, 2);
            case 7:
                return realThis(scriptable2, idFunctionObject).execSub(context, scriptable, objArr, 1);
            case 8:
                Scriptable scriptable3 = (Scriptable) realThis(scriptable2, idFunctionObject).execSub(context, scriptable, objArr, 1);
                return scriptable3.get("index", scriptable3);
            default:
                throw new IllegalArgumentException(String.valueOf(iMethodId));
        }
    }

    public Object executeRegExp(Context context, Scriptable scriptable, RegExpImpl regExpImpl, String str, int[] iArr, int i) {
        Scriptable scriptable2;
        Object obj;
        NativeRegExp nativeRegExp = this;
        a aVar = new a();
        int i2 = iArr[0];
        int length = str.length();
        int i3 = i2 > length ? length : i2;
        SubString subString = null;
        if (!matchRegExp(aVar, nativeRegExp.re, str, i3, length, regExpImpl.multiline)) {
            if (i != 2) {
                return null;
            }
            return Undefined.instance;
        }
        int i4 = aVar.d;
        iArr[0] = i4;
        int i5 = i4 - (aVar.c + i3);
        int i6 = i4 - i5;
        if (i == 0) {
            scriptable2 = null;
            obj = Boolean.TRUE;
        } else {
            Scriptable scriptableNewArray = context.newArray(scriptable, 0);
            scriptableNewArray.put(0, scriptableNewArray, str.substring(i6, i6 + i5));
            scriptable2 = scriptableNewArray;
            obj = scriptableNewArray;
        }
        int i7 = nativeRegExp.re.parenCount;
        if (i7 == 0) {
            regExpImpl.parens = null;
            regExpImpl.lastParen = new SubString();
        } else {
            regExpImpl.parens = new SubString[i7];
            int i8 = 0;
            while (i8 < nativeRegExp.re.parenCount) {
                int iA = aVar.a(i8);
                if (iA != -1) {
                    subString = new SubString(str, iA, aVar.b(i8));
                    regExpImpl.parens[i8] = subString;
                    if (i != 0) {
                        scriptable2.put(i8 + 1, scriptable2, subString.toString());
                    }
                } else if (i != 0) {
                    scriptable2.put(i8 + 1, scriptable2, Undefined.instance);
                }
                i8++;
                nativeRegExp = this;
            }
            regExpImpl.lastParen = subString;
        }
        if (i != 0) {
            scriptable2.put("index", scriptable2, Integer.valueOf(aVar.c + i3));
            scriptable2.put("input", scriptable2, str);
        }
        if (regExpImpl.lastMatch == null) {
            regExpImpl.lastMatch = new SubString();
            regExpImpl.leftContext = new SubString();
            regExpImpl.rightContext = new SubString();
        }
        SubString subString2 = regExpImpl.lastMatch;
        subString2.str = str;
        subString2.index = i6;
        subString2.length = i5;
        regExpImpl.leftContext.str = str;
        if (context.getLanguageVersion() == 120) {
            SubString subString3 = regExpImpl.leftContext;
            subString3.index = i3;
            subString3.length = aVar.c;
        } else {
            SubString subString4 = regExpImpl.leftContext;
            subString4.index = 0;
            subString4.length = i3 + aVar.c;
        }
        SubString subString5 = regExpImpl.rightContext;
        subString5.str = str;
        subString5.index = i4;
        subString5.length = length - i4;
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0041  */
    @Override
    public int findInstanceIdInfo(String str) {
        String str2;
        int i;
        int i2;
        int length = str.length();
        if (length == 6) {
            char cCharAt = str.charAt(0);
            if (cCharAt == 'g') {
                str2 = "global";
                i = 3;
            } else if (cCharAt == 's') {
                str2 = "source";
                i = 2;
            } else {
                str2 = null;
                i = 0;
            }
        } else if (length == 9) {
            char cCharAt2 = str.charAt(0);
            if (cCharAt2 == 'l') {
                str2 = "lastIndex";
                i = 1;
            } else if (cCharAt2 == 'm') {
                str2 = "multiline";
                i = 5;
            } else {
                str2 = null;
                i = 0;
            }
        } else if (length == 10) {
            str2 = "ignoreCase";
            i = 4;
        } else {
            str2 = null;
            i = 0;
        }
        int i3 = (str2 == null || str2 == str || str2.equals(str)) ? i : 0;
        if (i3 == 0) {
            return super.findInstanceIdInfo(str);
        }
        if (i3 == 1) {
            i2 = this.lastIndexAttr;
        } else {
            if (i3 != 2 && i3 != 3 && i3 != 4 && i3 != 5) {
                throw new IllegalStateException();
            }
            i2 = 7;
        }
        return IdScriptableObject.instanceIdInfo(i2, i3);
    }

    @Override
    public int findPrototypeId(Symbol symbol) {
        if (SymbolKey.MATCH.equals(symbol)) {
            return 7;
        }
        return SymbolKey.SEARCH.equals(symbol) ? 8 : 0;
    }

    @Override
    public String getClassName() {
        return "RegExp";
    }

    public int getFlags() {
        return this.re.flags;
    }

    @Override
    public String getInstanceIdName(int i) {
        if (i == 1) {
            return "lastIndex";
        }
        if (i == 2) {
            return "source";
        }
        if (i == 3) {
            return "global";
        }
        if (i != 4) {
            return i != 5 ? super.getInstanceIdName(i) : "multiline";
        }
        return "ignoreCase";
    }

    @Override
    public Object getInstanceIdValue(int i) {
        if (i == 1) {
            return this.lastIndex;
        }
        if (i == 2) {
            return new String(this.re.source);
        }
        if (i == 3) {
            return ScriptRuntime.wrapBoolean((this.re.flags & 1) != 0);
        }
        if (i == 4) {
            return ScriptRuntime.wrapBoolean((this.re.flags & 2) != 0);
        }
        if (i != 5) {
            return super.getInstanceIdValue(i);
        }
        return ScriptRuntime.wrapBoolean((this.re.flags & 4) != 0);
    }

    @Override
    public int getMaxInstanceId() {
        return 5;
    }

    @Override
    public String getTypeOf() {
        return "object";
    }

    @Override
    public void initPrototypeId(int i) {
        String str;
        String str2;
        if (i == 7) {
            initPrototypeMethod(REGEXP_TAG, i, SymbolKey.MATCH, "[Symbol.match]", 1);
            return;
        }
        if (i == 8) {
            initPrototypeMethod(REGEXP_TAG, i, SymbolKey.SEARCH, "[Symbol.search]", 1);
            return;
        }
        int i2 = 0;
        int i3 = 1;
        switch (i) {
            case 1:
                i2 = 2;
                str = "compile";
                String str3 = str;
                i3 = i2;
                str2 = str3;
                initPrototypeMethod(REGEXP_TAG, i, str2, i3);
                return;
            case 2:
                str = "toString";
                String str4 = str;
                i3 = i2;
                str2 = str4;
                initPrototypeMethod(REGEXP_TAG, i, str2, i3);
                return;
            case 3:
                str = "toSource";
                String str5 = str;
                i3 = i2;
                str2 = str5;
                initPrototypeMethod(REGEXP_TAG, i, str2, i3);
                return;
            case 4:
                str2 = "exec";
                initPrototypeMethod(REGEXP_TAG, i, str2, i3);
                return;
            case 5:
                str2 = "test";
                initPrototypeMethod(REGEXP_TAG, i, str2, i3);
                return;
            case 6:
                str2 = "prefix";
                initPrototypeMethod(REGEXP_TAG, i, str2, i3);
                return;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
    }

    @Override
    public void setInstanceIdAttributes(int i, int i2) {
        if (i != 1) {
            super.setInstanceIdAttributes(i, i2);
        } else {
            this.lastIndexAttr = i2;
        }
    }

    @Override
    public void setInstanceIdValue(int i, Object obj) {
        if (i == 1) {
            setLastIndex(obj);
        } else {
            if (i == 2 || i == 3 || i == 4 || i == 5) {
                return;
            }
            super.setInstanceIdValue(i, obj);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(IOUtils.DIR_SEPARATOR_UNIX);
        char[] cArr = this.re.source;
        if (cArr.length != 0) {
            sb.append(cArr);
        } else {
            sb.append("(?:)");
        }
        sb.append(IOUtils.DIR_SEPARATOR_UNIX);
        if ((this.re.flags & 1) != 0) {
            sb.append('g');
        }
        if ((this.re.flags & 2) != 0) {
            sb.append('i');
        }
        if ((this.re.flags & 4) != 0) {
            sb.append('m');
        }
        return sb.toString();
    }

    private static void pushBackTrackState(a aVar, byte b, int i, int i2, int i3, int i4) {
        aVar.g = new xm8(aVar, b, i, i2, i3, i4);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x003f  */
    @Override
    public int findPrototypeId(String str) {
        String str2;
        int length = str.length();
        int i = 4;
        if (length != 4) {
            i = 6;
            if (length == 6) {
                str2 = "prefix";
            } else if (length == 7) {
                str2 = "compile";
                i = 1;
            } else if (length != 8) {
                str2 = null;
                i = 0;
            } else {
                i = 3;
                char cCharAt = str.charAt(3);
                if (cCharAt == 'o') {
                    str2 = "toSource";
                } else if (cCharAt == 't') {
                    str2 = "toString";
                    i = 2;
                } else {
                    str2 = null;
                    i = 0;
                }
            }
        } else {
            char cCharAt2 = str.charAt(0);
            if (cCharAt2 == 'e') {
                str2 = "exec";
            } else if (cCharAt2 == 't') {
                str2 = "test";
                i = 5;
            } else {
                str2 = null;
                i = 0;
            }
        }
        if (str2 == null || str2 == str || str2.equals(str)) {
            return i;
        }
        return 0;
    }

    public NativeRegExp() {
        this.lastIndex = ScriptRuntime.zeroObj;
        this.lastIndexAttr = 6;
    }
}
