package defpackage;

public class uh5 extends ph5 {
    public final byte[] d;
    public final byte[] e;

    public uh5(rh5 rh5Var, byte[] bArr) {
        super(false, rh5Var);
        this.d = ci.q(bArr, 0, bArr.length - 32);
        this.e = ci.q(bArr, bArr.length - 32, bArr.length);
    }

    public static byte[] c(byte[] bArr, byte[] bArr2) {
        return ci.k(bArr, bArr2);
    }

    public byte[] getEncoded() {
        return c(this.d, this.e);
    }

    public uh5(rh5 rh5Var, byte[] bArr, byte[] bArr2) {
        super(false, rh5Var);
        this.d = ci.f(bArr);
        this.e = ci.f(bArr2);
    }
}
