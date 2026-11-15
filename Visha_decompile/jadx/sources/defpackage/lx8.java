package defpackage;

public class lx8 extends ix8 {
    public byte[] d;

    public lx8(kx8 kx8Var, byte[] bArr) {
        super(true, kx8Var);
        this.d = ci.f(bArr);
    }

    public byte[] getEncoded() {
        return ci.f(this.d);
    }
}
