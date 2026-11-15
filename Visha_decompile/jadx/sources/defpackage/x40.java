package defpackage;

public class x40 extends t40 {
    public byte[] d;

    public x40(v40 v40Var, byte[] bArr) {
        super(false, v40Var);
        this.d = ci.f(bArr);
    }

    public byte[] getEncoded() {
        return ci.f(this.d);
    }
}
