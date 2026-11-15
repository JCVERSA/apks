package defpackage;

public abstract class c2 extends p1 implements v1 {
    public static final d2 c = new a(c2.class, 28);
    public static final char[] d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public final byte[] b;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 d(wp1 wp1Var) {
            return c2.w(wp1Var.z());
        }
    }

    public c2(byte[] bArr, boolean z) {
        this.b = z ? ci.f(bArr) : bArr;
    }

    public static c2 w(byte[] bArr) {
        return new gq1(bArr, false);
    }

    public static void x(StringBuffer stringBuffer, int i) {
        char[] cArr = d;
        stringBuffer.append(cArr[(i >>> 4) & 15]);
        stringBuffer.append(cArr[i & 15]);
    }

    public static void y(StringBuffer stringBuffer, int i) {
        int i2;
        if (i < 128) {
            x(stringBuffer, i);
            return;
        }
        byte[] bArr = new byte[5];
        int i3 = 5;
        while (true) {
            i2 = i3 - 1;
            bArr[i2] = (byte) i;
            i >>>= 8;
            if (i == 0) {
                break;
            } else {
                i3 = i2;
            }
        }
        int i4 = i3 - 2;
        bArr[i4] = (byte) ((5 - i2) | 128);
        while (true) {
            int i5 = i4 + 1;
            x(stringBuffer, bArr[i4]);
            if (i5 >= 5) {
                return;
            } else {
                i4 = i5;
            }
        }
    }

    @Override
    public final String getString() {
        int length = this.b.length;
        StringBuffer stringBuffer = new StringBuffer(((o1.f(length) + length) * 2) + 3);
        stringBuffer.append("#1C");
        y(stringBuffer, length);
        for (int i = 0; i < length; i++) {
            x(stringBuffer, this.b[i]);
        }
        return stringBuffer.toString();
    }

    @Override
    public final int hashCode() {
        return ci.v(this.b);
    }

    @Override
    public final boolean m(p1 p1Var) {
        if (p1Var instanceof c2) {
            return ci.b(this.b, ((c2) p1Var).b);
        }
        return false;
    }

    @Override
    public final void n(o1 o1Var, boolean z) {
        o1Var.o(z, 28, this.b);
    }

    @Override
    public final boolean o() {
        return false;
    }

    @Override
    public final int q(boolean z) {
        return o1.g(z, this.b.length);
    }

    public String toString() {
        return getString();
    }
}
