package defpackage;

public class x64 extends t64 {
    public byte[] d;

    public x64(w64 w64Var, byte[] bArr) {
        super(true, w64Var);
        this.d = ci.f(bArr);
    }

    public byte[] getEncoded() {
        return ci.f(this.d);
    }
}
