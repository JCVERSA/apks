package defpackage;

public class sq1 extends s0 {
    public sq1(byte[] bArr, boolean z) {
        super(bArr, z);
    }

    public static void C(o1 o1Var, boolean z, byte b, byte[] bArr, int i, int i2) {
        o1Var.n(z, 3, b, bArr, i, i2);
    }

    public static void D(o1 o1Var, boolean z, byte[] bArr, int i, int i2) {
        o1Var.p(z, 3, bArr, i, i2);
    }

    public static int E(boolean z, int i) {
        return o1.g(z, i);
    }

    @Override
    public void n(o1 o1Var, boolean z) {
        o1Var.o(z, 3, this.b);
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
    public p1 v() {
        return this;
    }
}
