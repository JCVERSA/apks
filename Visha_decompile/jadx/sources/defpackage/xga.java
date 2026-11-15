package defpackage;

import freemarker.core.Environment;
import freemarker.core.b1;
import freemarker.core.e;
import freemarker.core.e1;
import freemarker.core.n1;
import java.io.IOException;

public final class xga extends ifa {
    public static final char[] n;
    public static final xga o;
    public char[] l;
    public final boolean m;

    static {
        char[] cArr = new char[0];
        n = cArr;
        o = new xga(cArr, false);
    }

    public xga(String str) {
        this(str, false);
    }

    public static char[] l0(char[] cArr, char[] cArr2) {
        char[] cArr3 = new char[cArr.length + cArr2.length];
        System.arraycopy(cArr, 0, cArr3, 0, cArr.length);
        System.arraycopy(cArr2, 0, cArr3, cArr.length, cArr2.length);
        return cArr3;
    }

    public static char[] s0(char[] cArr, int i) {
        return t0(cArr, i, cArr.length);
    }

    public static char[] t0(char[] cArr, int i, int i2) {
        int i3 = i2 - i;
        char[] cArr2 = new char[i3];
        System.arraycopy(cArr, i, cArr2, 0, i3);
        return cArr2;
    }

    @Override
    public void F(Environment environment) throws IOException {
        environment.a1().write(this.l);
    }

    @Override
    public String J(boolean z) {
        if (!z) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("text ");
            stringBuffer.append(n0a.D(new String(this.l)));
            return stringBuffer.toString();
        }
        String str = new String(this.l);
        if (!this.m) {
            return str;
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("<#noparse>");
        stringBuffer2.append(str);
        stringBuffer2.append("</#noparse>");
        return stringBuffer2.toString();
    }

    @Override
    public boolean X() {
        if (Z()) {
            return false;
        }
        for (int length = this.l.length - 1; length >= 0; length--) {
            char c = this.l[length];
            if (c == '\n' || c == '\r') {
                return false;
            }
            if (!Character.isWhitespace(c)) {
                return true;
            }
        }
        return true;
    }

    @Override
    public boolean Y() {
        if (Z()) {
            return false;
        }
        int i = 0;
        while (true) {
            char[] cArr = this.l;
            if (i >= cArr.length) {
                return true;
            }
            char c = cArr[i];
            if (c == '\n' || c == '\r') {
                return false;
            }
            if (!Character.isWhitespace(c)) {
                return true;
            }
            i++;
        }
    }

    @Override
    public boolean Z() {
        char[] cArr = this.l;
        if (cArr == null || cArr.length == 0) {
            return true;
        }
        if (!n0a.y(cArr)) {
            return false;
        }
        boolean z = U().U() == null;
        ifa ifaVarG0 = g0();
        ifa ifaVarC0 = c0();
        return ((ifaVarG0 == null && z) || q0(ifaVarG0)) && ((ifaVarC0 == null && z) || q0(ifaVarC0));
    }

    @Override
    public ifa e0(boolean z) {
        if (this.l.length == 0) {
            return this;
        }
        boolean zM0 = m0();
        boolean zN0 = n0();
        if (!z || this.l.length == 0 || (U().U() == null && g0() == null)) {
            return this;
        }
        int iU0 = !zM0 ? u0() : 0;
        int iR0 = !zN0 ? r0() : 0;
        if (iR0 == 0 && iU0 == 0) {
            return this;
        }
        char[] cArr = this.l;
        this.l = t0(cArr, iR0, cArr.length - iU0);
        if (iR0 > 0) {
            this.d++;
            this.c = 1;
        }
        if (iU0 > 0) {
            this.e = 0;
        }
        return this;
    }

    public final boolean m0() {
        boolean z = false;
        for (ifa ifaVarD0 = d0(); ifaVarD0 != null && ifaVarD0.d == this.f; ifaVarD0 = ifaVarD0.d0()) {
            if (ifaVarD0 instanceof z9b) {
                z9b z9bVar = (z9b) ifaVarD0;
                boolean z2 = z9bVar.p;
                if (!z2 && !z9bVar.q) {
                    z = true;
                }
                if (z2) {
                    int iP0 = p0();
                    if (iP0 >= 0 || this.c == 1) {
                        int i = iP0 + 1;
                        char[] cArrT0 = t0(this.l, 0, i);
                        char[] cArrS0 = s0(this.l, i);
                        if (n0a.y(cArrS0)) {
                            this.l = cArrT0;
                            this.e = 0;
                        } else {
                            int i2 = 0;
                            while (Character.isWhitespace(cArrS0[i2])) {
                                i2++;
                            }
                            this.l = l0(cArrT0, s0(cArrS0, i2));
                        }
                    }
                    z = true;
                }
            }
        }
        return z;
    }

    public final boolean n0() {
        boolean z = false;
        for (ifa ifaVarF0 = f0(); ifaVarF0 != null && ifaVarF0.f == this.d; ifaVarF0 = ifaVarF0.f0()) {
            if (ifaVarF0 instanceof z9b) {
                z9b z9bVar = (z9b) ifaVarF0;
                if (!z9bVar.p && !z9bVar.q) {
                    z = true;
                }
                if (z9bVar.q) {
                    int iO0 = o0();
                    int i = iO0 + 1;
                    if (i == 0) {
                        return false;
                    }
                    char[] cArr = this.l;
                    if (cArr.length > i && cArr[iO0] == '\r' && cArr[i] == '\n') {
                        i = iO0 + 2;
                    }
                    char[] cArrS0 = s0(cArr, i);
                    char[] cArrT0 = t0(this.l, 0, i);
                    if (n0a.y(cArrT0)) {
                        this.l = cArrS0;
                        this.d++;
                        this.c = 1;
                    } else {
                        int length = cArrT0.length - 1;
                        while (Character.isWhitespace(this.l[length])) {
                            length--;
                        }
                        char[] cArrT1 = t0(this.l, 0, length + 1);
                        if (n0a.y(cArrS0)) {
                            boolean z2 = true;
                            for (ifa ifaVarD0 = d0(); ifaVarD0 != null && ifaVarD0.d == this.f; ifaVarD0 = ifaVarD0.d0()) {
                                if (ifaVarD0.X()) {
                                    z2 = false;
                                }
                                if ((ifaVarD0 instanceof z9b) && ((z9b) ifaVarD0).p) {
                                    z2 = true;
                                    break;
                                }
                            }
                            if (z2) {
                                cArrS0 = n;
                            }
                        }
                        this.l = l0(cArrT1, cArrS0);
                    }
                    z = true;
                } else {
                    continue;
                }
            }
        }
        return z;
    }

    public final int o0() {
        char[] cArr = this.l;
        for (int i = 0; i < cArr.length; i++) {
            char c = cArr[i];
            if (c == '\r' || c == '\n') {
                return i;
            }
        }
        return -1;
    }

    public final int p0() {
        char[] cArr = this.l;
        for (int length = cArr.length - 1; length >= 0; length--) {
            char c = cArr[length];
            if (c == '\r' || c == '\n') {
                return length;
            }
        }
        return -1;
    }

    public final boolean q0(ifa ifaVar) {
        return (ifaVar instanceof e1) || (ifaVar instanceof e) || (ifaVar instanceof bj) || (ifaVar instanceof n1) || (ifaVar instanceof b1) || (ifaVar instanceof da1);
    }

    @Override
    public String r() {
        return "#text";
    }

    public final int r0() {
        int iO0 = o0();
        if (iO0 == -1 && this.c != 1) {
            return 0;
        }
        int i = iO0 + 1;
        char[] cArr = this.l;
        if (cArr.length > i && i > 0 && cArr[iO0] == '\r' && cArr[i] == '\n') {
            i = iO0 + 2;
        }
        if (!n0a.A(cArr, 0, i)) {
            return 0;
        }
        for (ifa ifaVarF0 = f0(); ifaVarF0 != null && ifaVarF0.f == this.d; ifaVarF0 = ifaVarF0.f0()) {
            if (ifaVarF0.X()) {
                return 0;
            }
        }
        return i;
    }

    @Override
    public int s() {
        return 1;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.E;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return new String(this.l);
        }
        throw new IndexOutOfBoundsException();
    }

    public final int u0() {
        int iP0 = p0();
        if (iP0 == -1 && this.c != 1) {
            return 0;
        }
        int i = iP0 + 1;
        if (!n0a.z(this.l, i)) {
            return 0;
        }
        for (ifa ifaVarD0 = d0(); ifaVarD0 != null && ifaVarD0.d == this.f; ifaVarD0 = ifaVarD0.d0()) {
            if (ifaVarD0.Y()) {
                return 0;
            }
        }
        return this.l.length - i;
    }

    public xga(String str, boolean z) {
        this(str.toCharArray(), z);
    }

    public xga(char[] cArr, boolean z) {
        this.l = cArr;
        this.m = z;
    }
}
