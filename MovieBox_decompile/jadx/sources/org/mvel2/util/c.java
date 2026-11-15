package org.mvel2.util;

import java.util.ArrayList;
import java.util.HashMap;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;

public class c {

    private static final Object[] f68875h = new Object[0];

    private char[] f68876a;

    private int f68877b;

    private int f68878c;

    private int f68879d;

    private int f68880e;

    private Class f68881f;

    private ParserContext f68882g;

    public c() {
    }

    private boolean b() {
        ParserContext parserContext = this.f68882g;
        return parserContext != null && parserContext.isStrongTyping();
    }

    /* JADX WARN: Code duplicated, block: B:115:0x014f A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:18:0x0034  */
    /* JADX WARN: Code duplicated, block: B:46:0x007e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x0080  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:57:0x00cf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:83:0x0149  */
    private Object c(boolean z10) {
        HashMap map;
        ArrayList arrayList;
        int i10;
        Object objD;
        int i11;
        int i12 = this.f68879d;
        int iE0 = this.f68878c;
        if (i12 - iE0 == 0) {
            return this.f68880e == 0 ? new ArrayList() : f68875h;
        }
        int i13 = this.f68880e;
        Object objX = null;
        if (i13 == -1) {
            map = null;
            arrayList = null;
        } else if (i13 == 0 || i13 == 1) {
            arrayList = new ArrayList();
            map = null;
        } else if (i13 != 2) {
            map = null;
            arrayList = null;
        } else {
            map = new HashMap();
            arrayList = null;
        }
        int i14 = -1;
        while (true) {
            int i15 = this.f68877b;
            int i16 = this.f68879d;
            if (i15 >= i16) {
                if (iE0 < i16 && m.q0(this.f68876a[iE0])) {
                    iE0 = m.E0(this.f68876a, iE0);
                }
                int i17 = this.f68879d;
                if (iE0 < i17) {
                    int i18 = this.f68877b;
                    if (i18 < i17 - 1) {
                        this.f68877b = i18 + 1;
                    }
                    if (this.f68880e == 2) {
                        map.put(objX, m.x(this.f68876a, iE0, this.f68877b - iE0));
                    } else {
                        int i19 = this.f68877b;
                        if (i19 < i17) {
                            this.f68877b = i19 + 1;
                        }
                        arrayList.add(m.x(this.f68876a, iE0, this.f68877b - iE0));
                    }
                    if (z10) {
                        f(iE0, this.f68877b - iE0);
                    }
                }
                int i20 = this.f68880e;
                if (i20 != 1) {
                    return i20 != 2 ? arrayList : map;
                }
                return arrayList.toArray();
            }
            char[] cArr = this.f68876a;
            char c10 = cArr[i15];
            if (c10 == '\"') {
                this.f68877b = m.d(cArr, i15, i16, c10);
            } else {
                if (c10 == ',') {
                    if (this.f68880e != 2) {
                        arrayList.add(new String(cArr, iE0, i15 - iE0).trim());
                    } else {
                        map.put(objX, m.x(cArr, iE0, i15 - iE0));
                    }
                    if (z10) {
                        f(iE0, this.f68877b - iE0);
                    }
                    i10 = this.f68877b;
                } else if (c10 == '.') {
                    int i21 = i15 + 1;
                    this.f68877b = i21;
                    int iE1 = m.E0(cArr, i21);
                    this.f68877b = iE1;
                    if (iE1 != this.f68879d) {
                        char[] cArr2 = this.f68876a;
                        if (cArr2[iE1] == '{') {
                            this.f68877b = m.c(cArr2, iE1, '{');
                        }
                    }
                } else if (c10 == ':') {
                    if (this.f68880e != 2) {
                        map = new HashMap();
                        this.f68880e = 2;
                    }
                    objX = m.x(this.f68876a, iE0, this.f68877b - iE0);
                    if (z10) {
                        f(iE0, this.f68877b - iE0);
                    }
                    i10 = this.f68877b;
                } else if (c10 == '[') {
                    if (i15 > this.f68878c || !m.c0(cArr[i15 - 1])) {
                        if (i14 == -1) {
                            i14 = 0;
                        }
                        c cVar = new c(i14);
                        char[] cArr3 = this.f68876a;
                        int i22 = this.f68877b;
                        int iD = m.d(cArr3, i22, this.f68879d, cArr3[i22]);
                        this.f68877b = iD;
                        objD = cVar.d(cArr3, i22 + 1, (iD - i22) - 1, z10, this.f68881f, this.f68882g);
                        if (this.f68880e == 2) {
                            map.put(objX, objD);
                        } else {
                            arrayList.add(objD);
                            objX = objD;
                        }
                        char[] cArr4 = this.f68876a;
                        int i23 = this.f68877b + 1;
                        this.f68877b = i23;
                        iE0 = m.E0(cArr4, i23);
                        this.f68877b = iE0;
                        i11 = this.f68879d;
                        if (iE0 >= i11 && this.f68876a[iE0] == ',') {
                            iE0++;
                        } else if (iE0 >= i11 && m.u0(this.f68876a[iE0]) == -1) {
                            throw new CompileException("unterminated collection element", this.f68876a, this.f68877b);
                        }
                    }
                } else if (c10 == '{') {
                    if (i14 == -1) {
                        i14 = 1;
                    }
                    if (i15 > this.f68878c) {
                        if (i14 == -1) {
                            i14 = 0;
                        }
                        c cVar2 = new c(i14);
                        char[] cArr5 = this.f68876a;
                        int i24 = this.f68877b;
                        int iD2 = m.d(cArr5, i24, this.f68879d, cArr5[i24]);
                        this.f68877b = iD2;
                        objD = cVar2.d(cArr5, i24 + 1, (iD2 - i24) - 1, z10, this.f68881f, this.f68882g);
                        if (this.f68880e == 2) {
                            map.put(objX, objD);
                        } else {
                            arrayList.add(objD);
                            objX = objD;
                        }
                        char[] cArr6 = this.f68876a;
                        int i25 = this.f68877b + 1;
                        this.f68877b = i25;
                        iE0 = m.E0(cArr6, i25);
                        this.f68877b = iE0;
                        i11 = this.f68879d;
                        if (iE0 >= i11) {
                            if (iE0 >= i11) {
                                continue;
                            }
                        } else if (iE0 >= i11) {
                            continue;
                        }
                    } else {
                        if (i14 == -1) {
                            i14 = 0;
                        }
                        c cVar3 = new c(i14);
                        char[] cArr7 = this.f68876a;
                        int i26 = this.f68877b;
                        int iD3 = m.d(cArr7, i26, this.f68879d, cArr7[i26]);
                        this.f68877b = iD3;
                        objD = cVar3.d(cArr7, i26 + 1, (iD3 - i26) - 1, z10, this.f68881f, this.f68882g);
                        if (this.f68880e == 2) {
                            map.put(objX, objD);
                        } else {
                            arrayList.add(objD);
                            objX = objD;
                        }
                        char[] cArr8 = this.f68876a;
                        int i27 = this.f68877b + 1;
                        this.f68877b = i27;
                        iE0 = m.E0(cArr8, i27);
                        this.f68877b = iE0;
                        i11 = this.f68879d;
                        if (iE0 >= i11) {
                            if (iE0 >= i11) {
                                continue;
                            }
                        } else if (iE0 >= i11) {
                            continue;
                        }
                    }
                } else if (c10 == '\'') {
                    this.f68877b = m.d(cArr, i15, i16, c10);
                } else if (c10 == '(') {
                    this.f68877b = m.d(cArr, i15, i16, '(');
                }
                iE0 = i10 + 1;
            }
            this.f68877b++;
        }
    }

    private void f(int i10, int i11) {
        if (this.f68881f == null) {
            m.I0(this.f68876a, i10, i11, this.f68882g);
            return;
        }
        Class knownEgressType = ((ExecutableStatement) m.I0(this.f68876a, i10, i11, this.f68882g)).getKnownEgressType();
        if (knownEgressType == null || p.f(this.f68881f, knownEgressType)) {
            return;
        }
        if (b() || !org.mvel2.b.a(knownEgressType, this.f68881f)) {
            throw new CompileException("expected type: " + this.f68881f.getName() + "; but found: " + knownEgressType.getName(), this.f68876a, this.f68877b);
        }
    }

    public int a() {
        return this.f68877b;
    }

    public Object d(char[] cArr, int i10, int i11, boolean z10, Class cls, ParserContext parserContext) {
        if (cls != null) {
            this.f68881f = m.I(cls);
        }
        this.f68876a = cArr;
        this.f68879d = i11 + i10;
        while (i10 < this.f68879d && m.q0(cArr[i10])) {
            i10++;
        }
        this.f68877b = i10;
        this.f68878c = i10;
        this.f68882g = parserContext;
        return c(z10);
    }

    public Object e(char[] cArr, int i10, int i11, boolean z10, ParserContext parserContext) {
        this.f68876a = cArr;
        this.f68882g = parserContext;
        this.f68879d = i11 + i10;
        while (i10 < this.f68879d && m.q0(cArr[i10])) {
            i10++;
        }
        this.f68877b = i10;
        this.f68878c = i10;
        return c(z10);
    }

    public c(int i10) {
        this.f68880e = i10;
    }
}
