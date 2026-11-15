package defpackage;

public class cc2 extends yb2 {
    public final byte[] d;
    public final byte[] e;

    public cc2(ac2 ac2Var, byte[] bArr) {
        super(false, ac2Var);
        this.d = ci.q(bArr, 0, 32);
        this.e = ci.q(bArr, 32, bArr.length);
    }

    public static byte[] c(byte[] bArr, byte[] bArr2) {
        return ci.k(bArr, bArr2);
    }

    public byte[] d() {
        return ci.f(this.e);
    }

    public byte[] getEncoded() {
        return c(this.d, this.e);
    }

    public cc2(ac2 ac2Var, byte[] bArr, byte[] bArr2) {
        super(false, ac2Var);
        this.d = ci.f(bArr);
        this.e = ci.f(bArr2);
    }
}
