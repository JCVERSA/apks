package defpackage;

public class h18 extends d18 {
    public final byte[] d;

    public h18(f18 f18Var, byte[] bArr) {
        super(false, f18Var);
        this.d = ci.f(bArr);
    }

    public byte[] getEncoded() {
        return ci.f(this.d);
    }
}
