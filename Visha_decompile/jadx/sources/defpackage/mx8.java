package defpackage;

public class mx8 extends ix8 {
    public final byte[] d;

    public mx8(kx8 kx8Var, byte[] bArr) {
        super(false, kx8Var);
        this.d = ci.f(bArr);
    }

    public byte[] c() {
        return ci.f(this.d);
    }

    public byte[] getEncoded() {
        return c();
    }
}
