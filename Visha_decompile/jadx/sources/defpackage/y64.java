package defpackage;

public class y64 extends t64 {
    public byte[] d;

    public y64(w64 w64Var, byte[] bArr) {
        super(false, w64Var);
        this.d = ci.f(bArr);
    }

    public byte[] c() {
        return ci.f(this.d);
    }

    public byte[] getEncoded() {
        return c();
    }
}
