package defpackage;

import java.io.IOException;
import java.util.Iterator;
import okhttp3.HttpUrl;

public abstract class t1 extends p1 implements Iterable {
    public static final d2 d = new a(t1.class, 17);
    public final x0[] b;
    public x0[] c;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 c(s1 s1Var) {
            return s1Var.F();
        }
    }

    public t1() {
        x0[] x0VarArr = y0.d;
        this.b = x0VarArr;
        this.c = x0VarArr;
    }

    public static boolean A(byte[] bArr, byte[] bArr2) {
        int i = bArr[0] & 223;
        int i2 = bArr2[0] & 223;
        if (i != i2) {
            return i < i2;
        }
        int iMin = Math.min(bArr.length, bArr2.length) - 1;
        for (int i3 = 1; i3 < iMin; i3++) {
            byte b = bArr[i3];
            byte b2 = bArr2[i3];
            if (b != b2) {
                return (b & 255) < (b2 & 255);
            }
        }
        return (bArr[iMin] & 255) <= (bArr2[iMin] & 255);
    }

    public static void B(x0[] x0VarArr) {
        int i;
        int length = x0VarArr.length;
        if (length < 2) {
            return;
        }
        x0 x0Var = x0VarArr[0];
        x0 x0Var2 = x0VarArr[1];
        byte[] bArrW = w(x0Var);
        byte[] bArrW2 = w(x0Var2);
        if (A(bArrW2, bArrW)) {
            x0Var2 = x0Var;
            x0Var = x0Var2;
            bArrW2 = bArrW;
            bArrW = bArrW2;
        }
        for (int i2 = 2; i2 < length; i2++) {
            x0 x0Var3 = x0VarArr[i2];
            byte[] bArrW3 = w(x0Var3);
            if (A(bArrW2, bArrW3)) {
                x0VarArr[i2 - 2] = x0Var;
                x0Var = x0Var2;
                bArrW = bArrW2;
                x0Var2 = x0Var3;
                bArrW2 = bArrW3;
            } else if (A(bArrW, bArrW3)) {
                x0VarArr[i2 - 2] = x0Var;
                x0Var = x0Var3;
                bArrW = bArrW3;
            } else {
                int i3 = i2 - 1;
                while (true) {
                    i = i3 - 1;
                    if (i <= 0) {
                        break;
                    }
                    x0 x0Var4 = x0VarArr[i3 - 2];
                    if (A(w(x0Var4), bArrW3)) {
                        break;
                    }
                    x0VarArr[i] = x0Var4;
                    i3 = i;
                }
                x0VarArr[i] = x0Var3;
            }
        }
        x0VarArr[length - 2] = x0Var;
        x0VarArr[length - 1] = x0Var2;
    }

    public static byte[] w(x0 x0Var) {
        try {
            return x0Var.j().l("DER");
        } catch (IOException unused) {
            throw new IllegalArgumentException("cannot encode object added to SET");
        }
    }

    public static t1 x(y1 y1Var, boolean z) {
        return (t1) d.e(y1Var, z);
    }

    public static t1 y(Object obj) {
        if (obj == null || (obj instanceof t1)) {
            return (t1) obj;
        }
        if (obj instanceof x0) {
            p1 p1VarJ = ((x0) obj).j();
            if (p1VarJ instanceof t1) {
                return (t1) p1VarJ;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (t1) d.b((byte[]) obj);
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct set from byte[]: " + e.getMessage());
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    public x0[] C() {
        return y0.b(this.b);
    }

    @Override
    public int hashCode() {
        int length = this.b.length;
        int iHashCode = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return iHashCode;
            }
            iHashCode += this.b[length].j().hashCode();
        }
    }

    @Override
    public Iterator iterator() {
        return new ci.a(C());
    }

    @Override
    public boolean m(p1 p1Var) {
        if (!(p1Var instanceof t1)) {
            return false;
        }
        t1 t1Var = (t1) p1Var;
        int size = size();
        if (t1Var.size() != size) {
            return false;
        }
        bq1 bq1Var = (bq1) u();
        bq1 bq1Var2 = (bq1) t1Var.u();
        for (int i = 0; i < size; i++) {
            p1 p1VarJ = bq1Var.b[i].j();
            p1 p1VarJ2 = bq1Var2.b[i].j();
            if (p1VarJ != p1VarJ2 && !p1VarJ.m(p1VarJ2)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean o() {
        return true;
    }

    public int size() {
        return this.b.length;
    }

    public String toString() {
        int size = size();
        if (size == 0) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('[');
        int i = 0;
        while (true) {
            stringBuffer.append(this.b[i]);
            i++;
            if (i >= size) {
                stringBuffer.append(']');
                return stringBuffer.toString();
            }
            stringBuffer.append(", ");
        }
    }

    @Override
    public p1 u() {
        if (this.c == null) {
            x0[] x0VarArr = (x0[]) this.b.clone();
            this.c = x0VarArr;
            B(x0VarArr);
        }
        return new bq1(true, this.c);
    }

    @Override
    public p1 v() {
        return new ar1(this.b, this.c);
    }

    public x0 z(int i) {
        return this.b[i];
    }

    public t1(x0 x0Var) {
        if (x0Var == null) {
            throw new NullPointerException("'element' cannot be null");
        }
        x0[] x0VarArr = {x0Var};
        this.b = x0VarArr;
        this.c = x0VarArr;
    }

    public t1(y0 y0Var, boolean z) {
        x0[] x0VarArrG;
        if (y0Var == null) {
            throw new NullPointerException("'elementVector' cannot be null");
        }
        if (!z || y0Var.f() < 2) {
            x0VarArrG = y0Var.g();
        } else {
            x0VarArrG = y0Var.c();
            B(x0VarArrG);
        }
        this.b = x0VarArrG;
        if (!z && x0VarArrG.length >= 2) {
            x0VarArrG = null;
        }
        this.c = x0VarArrG;
    }

    public t1(boolean z, x0[] x0VarArr) {
        this.b = x0VarArr;
        if (!z && x0VarArr.length >= 2) {
            x0VarArr = null;
        }
        this.c = x0VarArr;
    }

    public t1(x0[] x0VarArr, boolean z) {
        if (ci.C(x0VarArr)) {
            throw new NullPointerException("'elements' cannot be null, or contain null");
        }
        x0[] x0VarArrB = y0.b(x0VarArr);
        if (z && x0VarArrB.length >= 2) {
            B(x0VarArrB);
        }
        this.b = x0VarArrB;
        if (!z && x0VarArrB.length >= 2) {
            x0VarArr = null;
        }
        this.c = x0VarArr;
    }

    public t1(x0[] x0VarArr, x0[] x0VarArr2) {
        this.b = x0VarArr;
        this.c = x0VarArr2;
    }
}
