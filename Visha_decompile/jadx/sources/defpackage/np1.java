package defpackage;

import java.io.IOException;

public class np1 extends s0 {
    public np1(x0 x0Var) {
        super(x0Var.j().l("DER"), 0);
    }

    @Override
    public void n(o1 o1Var, boolean z) throws IOException {
        byte[] bArr = this.b;
        int i = bArr[0] & 255;
        int length = bArr.length - 1;
        byte b = bArr[length];
        byte b2 = (byte) ((255 << i) & b);
        if (b == b2) {
            o1Var.o(z, 3, bArr);
        } else {
            o1Var.q(z, 3, bArr, 0, length, b2);
        }
    }

    @Override
    public boolean o() {
        return false;
    }

    @Override
    public int q(boolean z) {
        return o1.g(z, this.b.length);
    }

    @Override
    public p1 u() {
        return this;
    }

    @Override
    public p1 v() {
        return this;
    }

    public np1(byte[] bArr) {
        this(bArr, 0);
    }

    public np1(byte[] bArr, int i) {
        super(bArr, i);
    }

    public np1(byte[] bArr, boolean z) {
        super(bArr, z);
    }
}
