package defpackage;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class ho8 extends c3 {
    public final kd9 e;
    public final char[] f;
    public int g;
    public final dg h;

    public ho8(kd9 kd9Var, char[] cArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(kd9Var, (i & 2) != 0 ? yu0.c.d() : cArr);
    }

    @Override
    public int H(int i) {
        if (i < D().length()) {
            return i;
        }
        this.a = i;
        v();
        return (this.a != 0 || D().length() == 0) ? -1 : 0;
    }

    @Override
    public String K(int i, int i2) {
        return D().e(i, i2);
    }

    @Override
    public boolean M() {
        int iJ = J();
        if (iJ >= D().length() || iJ == -1 || D().charAt(iJ) != ',') {
            return false;
        }
        this.a++;
        return true;
    }

    @Override
    public dg D() {
        return this.h;
    }

    public int S(char c, int i) {
        dg dgVarD = D();
        int length = dgVarD.length();
        while (i < length) {
            if (dgVarD.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public final void T(int i) {
        char[] cArr = D().b;
        if (i != 0) {
            int i2 = this.a;
            fi.h(cArr, cArr, 0, i2, i2 + i);
        }
        int length = D().length();
        while (i != length) {
            int iA = this.e.a(cArr, i, length - i);
            if (iA == -1) {
                D().f(i);
                this.g = -1;
                break;
            }
            i += iA;
        }
        this.a = 0;
    }

    public final void U() {
        yu0.c.c(this.f);
    }

    @Override
    public void e(int i, int i2) {
        StringBuilder sbC = C();
        sbC.append(D().b, i, i2 - i);
        y45.i(sbC, "this.append(value, start…x, endIndex - startIndex)");
    }

    @Override
    public boolean f() {
        v();
        int i = this.a;
        while (true) {
            int iH = H(i);
            if (iH == -1) {
                this.a = iH;
                return false;
            }
            char cCharAt = D().charAt(iH);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.a = iH;
                return E(cCharAt);
            }
            i = iH + 1;
        }
    }

    @Override
    public String k() {
        o('\"');
        int i = this.a;
        int iS = S('\"', i);
        if (iS == -1) {
            int iH = H(i);
            if (iH != -1) {
                return r(D(), this.a, iH);
            }
            z((byte) 1);
            throw new KotlinNothingValueException();
        }
        for (int i2 = i; i2 < iS; i2++) {
            if (D().charAt(i2) == '\\') {
                return r(D(), this.a, i2);
            }
        }
        this.a = iS + 1;
        return K(i, iS);
    }

    @Override
    public String l(String str, boolean z) {
        y45.j(str, "keyToMatch");
        return null;
    }

    @Override
    public byte m() {
        v();
        dg dgVarD = D();
        int i = this.a;
        while (true) {
            int iH = H(i);
            if (iH == -1) {
                this.a = iH;
                return (byte) 10;
            }
            int i2 = iH + 1;
            byte bA = d3.a(dgVarD.charAt(iH));
            if (bA != 3) {
                this.a = i2;
                return bA;
            }
            i = i2;
        }
    }

    @Override
    public void v() {
        int length = D().length() - this.a;
        if (length > this.g) {
            return;
        }
        T(length);
    }

    public ho8(kd9 kd9Var, char[] cArr) {
        y45.j(kd9Var, "reader");
        y45.j(cArr, "buffer");
        this.e = kd9Var;
        this.f = cArr;
        this.g = 128;
        this.h = new dg(cArr);
        T(0);
    }
}
