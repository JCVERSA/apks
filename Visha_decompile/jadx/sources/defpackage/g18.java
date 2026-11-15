package defpackage;

public class g18 extends d18 {
    public final byte[] d;

    public g18(f18 f18Var, byte[] bArr) {
        super(true, f18Var);
        this.d = ci.f(bArr);
    }

    public byte[] getEncoded() {
        return ci.f(this.d);
    }
}
