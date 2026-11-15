package defpackage;

import java.io.IOException;

public abstract class r0 extends p1 implements v1 {
    public static final d2 c = new a(r0.class, 30);
    public final char[] b;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 d(wp1 wp1Var) {
            return r0.w(wp1Var.z());
        }
    }

    public r0(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("'string' cannot be null");
        }
        int length = bArr.length;
        if ((length & 1) != 0) {
            throw new IllegalArgumentException("malformed BMPString encoding encountered");
        }
        int i = length / 2;
        char[] cArr = new char[i];
        for (int i2 = 0; i2 != i; i2++) {
            int i3 = i2 * 2;
            cArr[i2] = (char) ((bArr[i3 + 1] & 255) | (bArr[i3] << 8));
        }
        this.b = cArr;
    }

    public static r0 w(byte[] bArr) {
        return new mp1(bArr);
    }

    public static r0 x(char[] cArr) {
        return new mp1(cArr);
    }

    @Override
    public final String getString() {
        return new String(this.b);
    }

    @Override
    public final int hashCode() {
        return ci.x(this.b);
    }

    @Override
    public final boolean m(p1 p1Var) {
        if (p1Var instanceof r0) {
            return ci.c(this.b, ((r0) p1Var).b);
        }
        return false;
    }

    @Override
    public final void n(o1 o1Var, boolean z) throws IOException {
        int length = this.b.length;
        o1Var.s(z, 30);
        o1Var.k(length * 2);
        byte[] bArr = new byte[8];
        int i = length & (-4);
        int i2 = 0;
        while (i2 < i) {
            char[] cArr = this.b;
            char c2 = cArr[i2];
            char c3 = cArr[i2 + 1];
            char c4 = cArr[i2 + 2];
            char c5 = cArr[i2 + 3];
            i2 += 4;
            bArr[0] = (byte) (c2 >> '\b');
            bArr[1] = (byte) c2;
            bArr[2] = (byte) (c3 >> '\b');
            bArr[3] = (byte) c3;
            bArr[4] = (byte) (c4 >> '\b');
            bArr[5] = (byte) c4;
            bArr[6] = (byte) (c5 >> '\b');
            bArr[7] = (byte) c5;
            o1Var.j(bArr, 0, 8);
        }
        if (i2 < length) {
            int i3 = 0;
            do {
                char c6 = this.b[i2];
                i2++;
                int i4 = i3 + 1;
                bArr[i3] = (byte) (c6 >> '\b');
                i3 += 2;
                bArr[i4] = (byte) c6;
            } while (i2 < length);
            o1Var.j(bArr, 0, i3);
        }
    }

    @Override
    public final boolean o() {
        return false;
    }

    @Override
    public final int q(boolean z) {
        return o1.g(z, this.b.length * 2);
    }

    public String toString() {
        return getString();
    }

    public r0(char[] cArr) {
        if (cArr == null) {
            throw new NullPointerException("'string' cannot be null");
        }
        this.b = cArr;
    }
}
