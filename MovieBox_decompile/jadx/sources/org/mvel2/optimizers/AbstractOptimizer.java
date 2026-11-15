package org.mvel2.optimizers;

import java.lang.reflect.Method;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.d;
import org.mvel2.util.m;

public class AbstractOptimizer extends AbstractParser {
    protected static final int BEAN = 0;
    protected static final int COL = 2;
    protected static final int METH = 1;
    protected static final int WITH = 3;
    protected boolean collection;
    protected Class currType;
    protected boolean nullSafe;
    protected boolean staticAccess;
    protected int tkStart;

    protected AbstractOptimizer() {
        this.collection = false;
        this.nullSafe = false;
        this.currType = null;
        this.staticAccess = false;
    }

    protected String capture() {
        char[] cArr = this.expr;
        int iTrimRight = trimRight(this.tkStart);
        this.tkStart = iTrimRight;
        return new String(cArr, iTrimRight, trimLeft(this.cursor) - this.tkStart);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0027  */
    /* JADX WARN: Code duplicated, block: B:17:0x002a  */
    /* JADX WARN: Code duplicated, block: B:19:0x002e  */
    protected int findLastUnion() {
        int i10 = 0;
        int i11 = -1;
        for (int i12 = (this.start + this.length) - 1; i12 != this.start; i12--) {
            char c10 = this.expr[i12];
            if (c10 != '.') {
                if (c10 == '[') {
                    i10--;
                    if (i10 == 0) {
                        this.collection = true;
                        i11 = i12;
                    }
                } else if (c10 == ']') {
                    i10++;
                } else if (c10 == '{') {
                    i10--;
                    if (i10 == 0) {
                        this.collection = true;
                        i11 = i12;
                    }
                } else if (c10 == '}') {
                    i10++;
                }
            } else if (i10 == 0) {
                i11 = i12;
            }
            if (i11 != -1) {
                break;
            }
        }
        return i11;
    }

    protected int nextSubToken() {
        int i10;
        skipWhitespace();
        this.nullSafe = false;
        char[] cArr = this.expr;
        int i11 = this.cursor;
        this.tkStart = i11;
        char c10 = cArr[i11];
        if (c10 != '.') {
            if (c10 != '?') {
                if (c10 == '[') {
                    return 2;
                }
                if (c10 == '{' && cArr[i11 - 1] == '.') {
                    return 3;
                }
            } else if (this.start == i11) {
                this.tkStart = i11 + 1;
                this.cursor = i11 + 1;
                this.nullSafe = true;
            }
        } else {
            if (this.start + 1 == this.end) {
                throw new CompileException("unexpected end of statement", this.expr, this.start);
            }
            int i12 = i11 + 1;
            this.tkStart = i12;
            this.cursor = i12;
            char c11 = cArr[i12];
            if (c11 == '?') {
                skipWhitespace();
                int i13 = this.tkStart + 1;
                this.tkStart = i13;
                this.cursor = i13;
                if (i13 == this.end) {
                    throw new CompileException("unexpected end of statement", this.expr, this.start);
                }
                this.nullSafe = true;
                this.fields = -1;
            } else {
                if (c11 == '{') {
                    return 3;
                }
                if (m.q0(c11)) {
                    skipWhitespace();
                    this.tkStart = this.cursor;
                }
            }
        }
        do {
            i10 = this.cursor + 1;
            this.cursor = i10;
            if (i10 >= this.end) {
                break;
            }
        } while (m.c0(this.expr[i10]));
        skipWhitespace();
        int i14 = this.cursor;
        if (i14 >= this.end) {
            return 0;
        }
        char c12 = this.expr[i14];
        if (c12 != '(') {
            return c12 != '[' ? 0 : 2;
        }
        return 1;
    }

    protected boolean scanTo(char c10) {
        while (true) {
            int i10 = this.cursor;
            int i11 = this.end;
            if (i10 >= i11) {
                return true;
            }
            char[] cArr = this.expr;
            char c11 = cArr[i10];
            if (c11 == '\"' || c11 == '\'') {
                this.cursor = m.h(c11, cArr, i10, i11);
            }
            char[] cArr2 = this.expr;
            int i12 = this.cursor;
            if (cArr2[i12] == c10) {
                return false;
            }
            this.cursor = i12 + 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:146:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x00fa A[Catch: Exception -> 0x0143, TryCatch #3 {Exception -> 0x0143, blocks: (B:3:0x0003, B:4:0x0009, B:6:0x000d, B:37:0x0059, B:18:0x002b, B:21:0x0031, B:28:0x0040, B:29:0x0043, B:30:0x0046, B:32:0x004a, B:34:0x0050, B:36:0x0056, B:39:0x005e, B:41:0x0062, B:43:0x006f, B:44:0x007b, B:46:0x007f, B:48:0x0087, B:51:0x0094, B:53:0x0099, B:55:0x009e, B:56:0x00bc, B:58:0x00c1, B:60:0x00c8, B:63:0x00d5, B:42:0x0067, B:66:0x00dd, B:67:0x00e0, B:70:0x00e6, B:72:0x00ec, B:83:0x0109, B:74:0x00f0, B:75:0x00f3, B:76:0x00f6, B:78:0x00fa, B:80:0x0100, B:82:0x0106, B:84:0x010c, B:85:0x0113, B:87:0x0119, B:89:0x011f, B:94:0x012a, B:96:0x0130, B:98:0x0136), top: B:111:0x0003, inners: #0, #1, #2 }] */
    protected Object tryStaticAccess() {
        int i10;
        char[] cArr;
        int i11 = this.cursor;
        try {
            int i12 = this.end;
            int i13 = i12 - 1;
            boolean z10 = false;
            while (i13 > this.start) {
                char c10 = this.expr[i13];
                if (c10 != '\"') {
                    if (c10 != '\'') {
                        int i14 = 1;
                        if (c10 == ')') {
                            int i15 = i13 - 1;
                            int i16 = 1;
                            while (i15 > this.start && i16 != 0) {
                                char c11 = this.expr[i15];
                                if (c11 == '\"') {
                                    while (i15 > this.start) {
                                        cArr = this.expr;
                                        if (cArr[i15] == c11) {
                                            break;
                                        }
                                        break;
                                    }
                                }
                                switch (c11) {
                                    case '\'':
                                        while (i15 > this.start) {
                                            cArr = this.expr;
                                            if (cArr[i15] == c11 || cArr[i15 - 1] == '\\') {
                                            }
                                            i15--;
                                            break;
                                        }
                                        break;
                                    case '(':
                                        i16--;
                                        break;
                                    case ')':
                                        i16++;
                                        break;
                                }
                                i15--;
                            }
                            z10 = true;
                            int i17 = i15;
                            i13 = i15 + 1;
                            i12 = i17;
                        } else if (c10 == '.') {
                            if (!z10) {
                                ParserContext parserContext = this.pCtx;
                                ClassLoader classLoader = parserContext != null ? parserContext.getClassLoader() : Thread.currentThread().getContextClassLoader();
                                char[] cArr2 = this.expr;
                                int i18 = this.start;
                                this.cursor = i12;
                                String str = new String(cArr2, i18, i12 - i18);
                                try {
                                    if (d.f68809j && str.endsWith(".class")) {
                                        str = str.substring(0, str.length() - 6);
                                    }
                                    return Class.forName(str, true, classLoader);
                                } catch (ClassNotFoundException e10) {
                                    try {
                                        return m.F(str, classLoader, e10);
                                    } catch (ClassNotFoundException unused) {
                                        Class clsH = m.H(new String(this.expr, this.start, i13 - this.start), classLoader);
                                        String str2 = new String(this.expr, i13 + 1, (this.end - i13) - 1);
                                        try {
                                            return clsH.getField(str2);
                                        } catch (NoSuchFieldException unused2) {
                                            for (Method method : clsH.getMethods()) {
                                                if (str2.equals(method.getName())) {
                                                    return method;
                                                }
                                            }
                                            return null;
                                        }
                                    }
                                }
                            }
                            i12 = i13;
                            z10 = false;
                        } else if (c10 == '}') {
                            while (true) {
                                i13--;
                                if (i13 <= this.start || i14 == 0) {
                                    break;
                                }
                                char c12 = this.expr[i13];
                                if (c12 == '\"' || c12 == '\'') {
                                    while (i13 > this.start) {
                                        char[] cArr3 = this.expr;
                                        if (cArr3[i13] == c12 || cArr3[i13 - 1] == '\\') {
                                            break;
                                        }
                                        i13--;
                                    }
                                } else if (c12 == '{') {
                                    i14--;
                                } else if (c12 == '}') {
                                    i14++;
                                }
                            }
                        }
                    } else {
                        while (true) {
                            i10 = i13 - 1;
                            if (i10 > this.start) {
                                char[] cArr4 = this.expr;
                                if (cArr4[i10] != '\'' || cArr4[i13 - 2] == '\\') {
                                    i13 = i10;
                                }
                            }
                        }
                    }
                    i13--;
                } else {
                    while (true) {
                        i10 = i13 - 1;
                        if (i10 > this.start) {
                            char[] cArr5 = this.expr;
                            if (cArr5[i10] != '\"' || cArr5[i13 - 2] == '\\') {
                                i13 = i10;
                            }
                        }
                    }
                }
                i13 = i10;
                i13--;
            }
        } catch (Exception unused3) {
            this.cursor = i11;
        }
        return null;
    }

    protected void whiteSpaceSkip() {
        if (this.cursor < this.length) {
            while (m.q0(this.expr[this.cursor])) {
                int i10 = this.cursor + 1;
                this.cursor = i10;
                if (i10 == this.length) {
                    return;
                }
            }
        }
    }

    protected AbstractOptimizer(ParserContext parserContext) {
        super(parserContext);
        this.collection = false;
        this.nullSafe = false;
        this.currType = null;
        this.staticAccess = false;
    }
}
