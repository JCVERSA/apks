package defpackage;

public class wx6 extends nx6 {
    public final byte[] d;

    public wx6(vx6 vx6Var, byte[] bArr) {
        super(true, vx6Var);
        this.d = ci.f(bArr);
    }

    public byte[] c() {
        return ci.f(this.d);
    }

    public byte[] getEncoded() {
        return c();
    }
}
