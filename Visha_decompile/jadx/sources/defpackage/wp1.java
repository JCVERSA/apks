package defpackage;

import java.io.IOException;

public class wp1 extends m1 {
    public wp1(x0 x0Var) {
        super(x0Var.j().l("DER"));
    }

    public static void B(o1 o1Var, boolean z, byte[] bArr, int i, int i2) throws IOException {
        o1Var.p(z, 4, bArr, i, i2);
    }

    public static int C(boolean z, int i) {
        return o1.g(z, i);
    }

    @Override
    public void n(o1 o1Var, boolean z) {
        o1Var.o(z, 4, this.b);
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

    public wp1(byte[] bArr) {
        super(bArr);
    }
}
