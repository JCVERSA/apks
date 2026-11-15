package defpackage;

public class xy8 extends ty8 {
    public final vu7 d;

    public xy8(vy8 vy8Var, byte[] bArr) {
        super(false, vy8Var);
        int iB = vy8Var.b();
        int i = iB * 2;
        if (bArr.length != i) {
            throw new IllegalArgumentException("public key encoding does not match parameters");
        }
        this.d = new vu7(ci.q(bArr, 0, iB), ci.q(bArr, iB, i));
    }

    public byte[] getEncoded() {
        vu7 vu7Var = this.d;
        return ci.k(vu7Var.a, vu7Var.b);
    }
}
